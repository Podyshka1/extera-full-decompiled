.class public final Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Landroid/net/Uri;

.field private zzg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    iget-object v1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zze:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzf:Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzg:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setDisplayName(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final setFamilyName(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final setGivenName(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final setIdToken(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .locals 1

    const-string v0, "idToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final setProfilePictureUri(Landroid/net/Uri;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->zzf:Landroid/net/Uri;

    return-object p0
.end method
