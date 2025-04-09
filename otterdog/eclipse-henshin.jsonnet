local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('modeling.emft.henshin', 'eclipse-henshin') {
  settings+: {
    description: "",
    name: "Eclipse Henshin",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('henshin') {
      allow_merge_commit: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Henshin is a state of the art model transformation language for the Eclipse Modeling Framework. Henshin supports both direct transformations of EMF single model instances (endogenous transformations), and translation of source model instances into a target language (exogenous transformations).",
      homepage: "https://projects.eclipse.org/projects/modeling.emft.henshin",
      topics+: [
        "emf",
        "graph-transformations",
        "model-driven-engineering",
        "model-transformations"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        enabled: true,
      },
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}
