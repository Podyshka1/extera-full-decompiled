.class public final Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;
.super Landroidx/credentials/CustomCredential;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;,
        Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Landroid/net/Uri;

.field private final zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->Companion:Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "idToken"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID_TOKEN"

    .line 4
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_DISPLAY_NAME"

    .line 5
    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_FAMILY_NAME"

    .line 6
    invoke-virtual {v0, v1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_GIVEN_NAME"

    .line 7
    invoke-virtual {v0, v1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_PHONE_NUMBER"

    .line 8
    invoke-virtual {v0, v1, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.BUNDLE_KEY_PROFILE_PICTURE_URI"

    .line 9
    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"

    .line 10
    invoke-direct {p0, v1, v0}, Landroidx/credentials/CustomCredential;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzf:Landroid/net/Uri;

    iput-object p7, p0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->zzg:Ljava/lang/String;

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 12
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "idToken should not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id should not be empty"

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
