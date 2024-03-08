using UnityEngine;
using UnityEngine.Rendering.PostProcessing;

namespace FoW
{
    public static class FogOfWarPPSv2Editor
    {
        public static void TryFixInstallIssues()
        {
            FogOfWarSetup.ForceAddMainShadersInBuild();
            FogOfWarSetup.ForceAddShaderBuild("FogOfWarPPSv2");
        }

        public static void GetInstallErrors()
        {
            FogOfWarSetup.CheckMainShadersIncludedInBuild();
            FogOfWarSetup.CheckShaderIsIncludedInBuild("FogOfWarPPSv2");
        }

        public static void GetSceneErrors()
        {
            PostProcessVolume[] volumes = Object.FindObjectsOfType<PostProcessVolume>(true);
            if (volumes.Length == 0)
                FogOfWarError.Error(null, "There are no PostProcessVolume components in the scene.");

            if (Object.FindObjectsOfType<PostProcessLayer>(true).Length == 0)
                FogOfWarError.Error(null, "There are no PostProcessLayer components in the scene (it should be on the same component as your camera).");

            bool found = false;
            FogOfWarTeam[] teams = Object.FindObjectsOfType<FogOfWarTeam>(true);
            foreach (PostProcessVolume volume in volumes)
            {
                if (volume.sharedProfile == null)
                    continue;

                if (!volume.sharedProfile.TryGetSettings(out FogOfWarPPSv2 renderer))
                    continue;

                found = true;

                if (!System.Array.Exists(teams, t => t.team == renderer.team))
                    FogOfWarError.Error(null, "There are no FogOfWarTeams in the scene with team index " + renderer.team.ToString() + "!");

                if (!renderer.fogColor.overrideState || renderer.fogColor.value.a < 0.001f)
                    FogOfWarError.Error(renderer, "The fog color is set to be transparent and won't be visible!");
            }

            if (!found)
                FogOfWarError.Error(null, "There are no PostProcessVolumes components in the scene with FogOfWarPPSv2 on them.");
        }
    }
}
