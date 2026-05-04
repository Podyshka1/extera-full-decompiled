.class public final Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identitycredentials/CreateCredentialRequest$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/google/android/gms/identitycredentials/CreateCredentialRequest$Companion;


# instance fields
.field private final candidateQueryData:Landroid/os/Bundle;

.field private final credentialData:Landroid/os/Bundle;

.field private final origin:Ljava/lang/String;

.field private final requestJson:Ljava/lang/String;

.field private final resultReceiver:Landroid/os/ResultReceiver;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->Companion:Lcom/google/android/gms/identitycredentials/CreateCredentialRequest$Companion;

    new-instance v0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequestCreator;

    invoke-direct {v0}, Lcom/google/android/gms/identitycredentials/CreateCredentialRequestCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentialData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidateQueryData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->credentialData:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->candidateQueryData:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->origin:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->requestJson:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->resultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final getCandidateQueryData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->candidateQueryData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getCredentialData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->credentialData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->requestJson:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->resultReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identitycredentials/CreateCredentialRequestCreator;->writeToParcel(Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;Landroid/os/Parcel;I)V

    return-void
.end method
