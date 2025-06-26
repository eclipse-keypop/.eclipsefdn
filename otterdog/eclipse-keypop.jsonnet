local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('iot.keypop', 'eclipse-keypop') {
  settings+: {
    blog: "http://keypop.org/",
    description: "Organization grouging together all the Eclipse Keypop project repositories",
    email: "keypop-dev@eclipse.org",
    name: "Eclipse Keypop",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  secrets+: [
    orgs.newOrgSecret('ORG_GITHUB_BOT_TOKEN') {
      value: "pass:bots/iot.keypop/github.com/api-token",
    },
    orgs.newOrgSecret('CENTRAL_SONATYPE_TOKEN_PASSWORD') {
      value: "pass:bots/iot.keypop/central.sonatype.org/token-password",
    },
    orgs.newOrgSecret('CENTRAL_SONATYPE_TOKEN_USERNAME') {
      value: "pass:bots/iot.keypop/central.sonatype.org/token-username",
    },
    orgs.newOrgSecret('GPG_KEY_ID') {
      value: "pass:bots/iot.keypop/gpg/key_id",
    },
    orgs.newOrgSecret('GPG_SUBKEY_ID') {
      value: 'pass:bots/iot.keypop/gpg/subkey_id',
    },
    orgs.newOrgSecret('GPG_PASSPHRASE') {
      value: "pass:bots/iot.keypop/gpg/passphrase",
    },
    orgs.newOrgSecret('GPG_PRIVATE_KEY') {
      value: "pass:bots/iot.keypop/gpg/secret-subkeys.asc",
    },
    orgs.newOrgSecret('SSH_PRIVATE_KEY') {
      value: 'pass:bots/iot.keypop/projects-storage.eclipse.org/id_rsa',
    },
    orgs.newOrgSecret('SSH_PASSPHRASE') {
      value: 'pass:bots/iot.keypop/projects-storage.eclipse.org/id_rsa.passphrase',
    },
    orgs.newOrgSecret('SSH_USERNAME') {
      value: 'pass:bots/iot.keypop/projects-storage.eclipse.org/username',
    },
  ],
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
    },
    orgs.newRepo('keypop-calypso-card-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Calypso Card API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-calypso-certificate-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Calypso Certificate API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-calypso-certificate-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Calypso Certificate API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-calypso-crypto-asymmetric-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Calypso Asymmetric Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-calypso-crypto-asymmetric-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Calypso Asymmetric Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-calypso-crypto-legacysam-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Calypso Legacy SAM Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-calypso-crypto-legacysam-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Calypso Legacy SAM Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-calypso-crypto-symmetric-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Calypso Symmetric Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-calypso-crypto-symmetric-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Calypso Symmetric Crypto API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-card-cpp-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a C++ implementation of the 'Card API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-card-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Card API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-ops') {
      archived: true,
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
    },
    orgs.newRepo('keypop-reader-java-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Keypop project repository containing a Java implementation of the 'Reader API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    },
    orgs.newRepo('keypop-storagecard-java-api') {
     allow_merge_commit: true,
     allow_update_branch: false,
     delete_branch_on_merge: false,
     description: "Eclipse Keypop project repository containing a Java implementation of the 'Storage Card API' standardized by the Calypso Networks association for ticketing terminal processing smart card",
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
    orgs.newRepo('keypop-api-docs') {
      local thisRepo = self,
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_setup_enabled: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: false,
      description: "Eclipse Keypop project repository centralizing API documentation (Javadoc, Doxygen) from all Keypop libraries",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "documentation",
        "javadoc",
        "doxygen",
        "keypop"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule(thisRepo.default_branch) {
          required_approving_review_count: 1,
          requires_status_checks: false,
          requires_strict_status_checks: true,
      },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('keypop-actions') {
      local thisRepo = self,
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "actions",
        "python",
      ],
      code_scanning_default_setup_enabled: true,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Keypop project repository containing reusable GitHub Actions for Keypop projects",
      has_projects: false,
      has_wiki: false,
      homepage: "https://keypop.org/",
      topics+: [
        "github-actions",
        "ci-cd",
        "automation",
        "keypop"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule(thisRepo.default_branch) {
           required_approving_review_count: 1,
           requires_status_checks: true,
           requires_strict_status_checks: true,
        },
      ],
    },
  ],
}
