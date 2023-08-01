local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-keypop') {
  settings+: {
    billing_email: "webmaster@eclipse.org",
    default_repository_permission: "none",
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "",
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: true,
    members_can_delete_repositories: true,
    name: "Eclipse Keypop",
    packages_containers_internal: false,
    packages_containers_public: false,
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
  },
  _repositories+:: [
    orgs.newRepo('keypop') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-calypso-card-cpp-api') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-calypso-card-java-api') {
      allow_update_branch: false,
      description: "Repository Eclipse Keypop project containing a Java implementation of Calypso Networks Association's reference Terminal Calypso Card API",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-calypso-crypto-asymmetric-cpp-api') {
    },
    orgs.newRepo('keypop-calypso-crypto-asymmetric-java-api') {
      allow_update_branch: false,
      description: "Repository Eclipse Keypop project containing a Java implementation of Calypso Networks Association's reference Terminal Calypso Asymmetric Crypto API",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-calypso-crypto-legacysam-cpp-api') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-calypso-crypto-legacysam-java-api') {
      allow_update_branch: false,
      description: "Repository Eclipse Keypop project containing a Java implementation of Calypso Networks Association's reference Terminal Calypso Legacy SAM Crypto API",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-calypso-crypto-symmetric-cpp-api') {
    },
    orgs.newRepo('keypop-calypso-crypto-symmetric-java-api') {
      allow_update_branch: false,
      description: "Repository Eclipse Keypop project containing a Java implementation of Calypso Networks Association's reference Terminal Calypso Symmetric Crypto API",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-card-cpp-api') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-card-java-api') {
      allow_update_branch: false,
      description: "Repository Eclipse Keypop project containing a Java implementation of Calypso Networks Association's reference Terminal Card API",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-reader-cpp-api') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-reader-java-api') {
      allow_update_branch: false,
      description: "Eclipse Keypop project repository containing a Java implementation of Calypso Networks Association's reference Terminal Reader API",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-website') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
    },
  ],
}
