.class public final Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identitycredentials/CreateCredentialResponse$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/google/android/gms/identitycredentials/CreateCredentialResponse$Companion;


# instance fields
.field private final data:Landroid/os/Bundle;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/CreateCredentialResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/identitycredentials/CreateCredentialResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;->Companion:Lcom/google/android/gms/identitycredentials/CreateCredentialResponse$Companion;

    new-instance v0, Lcom/google/android/gms/identitycredentials/CreateCredentialResponseCreator;

    invoke-direct {v0}, Lcom/google/android/gms/identitycredentials/CreateCredentialResponseCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;->data:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identitycredentials/CreateCredentialResponseCreator;->writeToParcel(Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;Landroid/os/Parcel;I)V

    return-void
.end method
