local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-keypop') {
  settings+: {
    blog: "http://keypop.org/",
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "Organization grouging together all the Eclipse Keypop project repositories",
    email: "keypop-dev@eclipse.org",
    name: "Eclipse Keypop",
    readers_can_create_discussions: true,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  webhooks+: [
    orgs.newOrgWebhook('https://ci.eclipse.org/keypop/github-webhook/') {
      content_type: "json",
      events+: [
        "pull_request",
        "push"
      ],
    },
  ],
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Repository hosting settings of GitHub organization & repositories for the Eclipse Keypop project",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "keypop",
        "support"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-calypso-card-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Calypso Card API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "cpp",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-calypso-card-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Calypso Card API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-calypso-certificate-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Calypso Certificate API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "cpp",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-calypso-certificate-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Calypso Certificate API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-calypso-crypto-asymmetric-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Calypso Asymmetric Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "cpp",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-calypso-crypto-asymmetric-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Calypso Asymmetric Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-calypso-crypto-legacysam-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Calypso Legacy SAM Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "cpp",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-calypso-crypto-legacysam-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Calypso Legacy SAM Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-calypso-crypto-symmetric-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Calypso Symmetric Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "cpp",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-calypso-crypto-symmetric-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Calypso Symmetric Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-card-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Card API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "cpp",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-card-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Card API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-ops') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Repository hosting the Continuous Integration settings of the Eclipse Keypop project",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "keypop",
        "support"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('keypop-reader-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Reader API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "cpp",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-reader-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Reader API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "api",
        "component",
        "java",
        "keypop"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Repository hosting the Eclipse Keypop project website: https://keypop.org/",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "keypop",
        "support"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
  ],
}
