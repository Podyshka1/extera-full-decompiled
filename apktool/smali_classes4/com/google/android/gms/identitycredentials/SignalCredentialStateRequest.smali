.class public final Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest$Companion;


# instance fields
.field private final origin:Ljava/lang/String;

.field private final requestData:Landroid/os/Bundle;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;->Companion:Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest$Companion;

    new-instance v0, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequestCreator;

    invoke-direct {v0}, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequestCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;->origin:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;->requestData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;->requestData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequestCreator;->writeToParcel(Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;Landroid/os/Parcel;I)V

    return-void
.end method
