package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_CrashlyticsReport_Session_Application extends CrashlyticsReport.Session.Application {
    private final String developmentPlatform;
    private final String developmentPlatformVersion;
    private final String displayVersion;
    private final String identifier;
    private final String installationUuid;
    private final String version;

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public CrashlyticsReport.Session.Application.Organization getOrganization() {
        return null;
    }

    private AutoValue_CrashlyticsReport_Session_Application(String str, String str2, String str3, CrashlyticsReport.Session.Application.Organization organization, String str4, String str5, String str6) {
        this.identifier = str;
        this.version = str2;
        this.displayVersion = str3;
        this.installationUuid = str4;
        this.developmentPlatform = str5;
        this.developmentPlatformVersion = str6;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public String getIdentifier() {
        return this.identifier;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public String getVersion() {
        return this.version;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public String getDisplayVersion() {
        return this.displayVersion;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public String getInstallationUuid() {
        return this.installationUuid;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public String getDevelopmentPlatform() {
        return this.developmentPlatform;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public String getDevelopmentPlatformVersion() {
        return this.developmentPlatformVersion;
    }

    public String toString() {
        return "Application{identifier=" + this.identifier + ", version=" + this.version + ", displayVersion=" + this.displayVersion + ", organization=" + ((Object) null) + ", installationUuid=" + this.installationUuid + ", developmentPlatform=" + this.developmentPlatform + ", developmentPlatformVersion=" + this.developmentPlatformVersion + "}";
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.Session.Application) {
            CrashlyticsReport.Session.Application application = (CrashlyticsReport.Session.Application) obj;
            if (this.identifier.equals(application.getIdentifier()) && this.version.equals(application.getVersion()) && ((str = this.displayVersion) != null ? str.equals(application.getDisplayVersion()) : application.getDisplayVersion() == null)) {
                application.getOrganization();
                String str2 = this.installationUuid;
                if (str2 != null ? str2.equals(application.getInstallationUuid()) : application.getInstallationUuid() == null) {
                    String str3 = this.developmentPlatform;
                    if (str3 != null ? str3.equals(application.getDevelopmentPlatform()) : application.getDevelopmentPlatform() == null) {
                        String str4 = this.developmentPlatformVersion;
                        if (str4 != null ? str4.equals(application.getDevelopmentPlatformVersion()) : application.getDevelopmentPlatformVersion() == null) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (((this.identifier.hashCode() ^ 1000003) * 1000003) ^ this.version.hashCode()) * 1000003;
        String str = this.displayVersion;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * (-721379959);
        String str2 = this.installationUuid;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.developmentPlatform;
        int iHashCode4 = (iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.developmentPlatformVersion;
        return iHashCode4 ^ (str4 != null ? str4.hashCode() : 0);
    }

    static final class Builder extends CrashlyticsReport.Session.Application.Builder {
        private String developmentPlatform;
        private String developmentPlatformVersion;
        private String displayVersion;
        private String identifier;
        private String installationUuid;
        private String version;

        Builder() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public CrashlyticsReport.Session.Application.Builder setIdentifier(String str) {
            if (str == null) {
                throw new NullPointerException("Null identifier");
            }
            this.identifier = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public CrashlyticsReport.Session.Application.Builder setVersion(String str) {
            if (str == null) {
                throw new NullPointerException("Null version");
            }
            this.version = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public CrashlyticsReport.Session.Application.Builder setDisplayVersion(String str) {
            this.displayVersion = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public CrashlyticsReport.Session.Application.Builder setInstallationUuid(String str) {
            this.installationUuid = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public CrashlyticsReport.Session.Application.Builder setDevelopmentPlatform(String str) {
            this.developmentPlatform = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public CrashlyticsReport.Session.Application.Builder setDevelopmentPlatformVersion(String str) {
            this.developmentPlatformVersion = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public CrashlyticsReport.Session.Application build() {
            String str;
            String str2 = this.identifier;
            if (str2 == null || (str = this.version) == null) {
                StringBuilder sb = new StringBuilder();
                if (this.identifier == null) {
                    sb.append(" identifier");
                }
                if (this.version == null) {
                    sb.append(" version");
                }
                throw new IllegalStateException("Missing required properties:" + ((Object) sb));
            }
            return new AutoValue_CrashlyticsReport_Session_Application(str2, str, this.displayVersion, null, this.installationUuid, this.developmentPlatform, this.developmentPlatformVersion);
        }
    }
}
