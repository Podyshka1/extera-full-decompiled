.class public final Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;->Companion:Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionCallbacks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionFailedListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x160

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 1
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;->createServiceInterface(Landroid/os/IBinder;)Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService;

    move-result-object p1

    return-object p1
.end method

.method protected createServiceInterface(Landroid/os/IBinder;)Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService;
    .locals 1

    const-string v0, "iBinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService;

    move-result-object p1

    return-object p1
.end method

.method public getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/identity_credentials/zze;->zzo:[Lcom/google/android/gms/common/Feature;

    const-string v1, "ALL_FEATURES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 1

    const v0, 0x1110e58

    return v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.identitycredentials.internal.IIdentityCredentialService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.identitycredentials.service.START"

    return-object v0
.end method

.method protected getUseDynamicLookup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public usesClientTelemetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
