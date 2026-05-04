.class public final Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identitycredentials/CreateCredentialHandle$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/google/android/gms/identitycredentials/CreateCredentialHandle$Companion;


# instance fields
.field private final createCredentialResponse:Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;

.field private final pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/CreateCredentialHandle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/identitycredentials/CreateCredentialHandle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;->Companion:Lcom/google/android/gms/identitycredentials/CreateCredentialHandle$Companion;

    new-instance v0, Lcom/google/android/gms/identitycredentials/CreateCredentialHandleCreator;

    invoke-direct {v0}, Lcom/google/android/gms/identitycredentials/CreateCredentialHandleCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;->pendingIntent:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;->createCredentialResponse:Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pendingIntent or createCredentialResponse must be specified."

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getCreateCredentialResponse()Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;->createCredentialResponse:Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;

    return-object v0
.end method

.method public final getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identitycredentials/CreateCredentialHandleCreator;->writeToParcel(Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;Landroid/os/Parcel;I)V

    return-void
.end method
