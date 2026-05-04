.class public final Lcom/google/android/gms/identitycredentials/CredentialOption;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identitycredentials/CredentialOption$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/identitycredentials/CredentialOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/google/android/gms/identitycredentials/CredentialOption$Companion;


# instance fields
.field private final candidateQueryData:Landroid/os/Bundle;

.field private final credentialRetrievalData:Landroid/os/Bundle;

.field private final protocolType:Ljava/lang/String;

.field private final requestMatcher:Ljava/lang/String;

.field private final requestType:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/CredentialOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/identitycredentials/CredentialOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/identitycredentials/CredentialOption;->Companion:Lcom/google/android/gms/identitycredentials/CredentialOption$Companion;

    new-instance v0, Lcom/google/android/gms/identitycredentials/CredentialOptionCreator;

    invoke-direct {v0}, Lcom/google/android/gms/identitycredentials/CredentialOptionCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/identitycredentials/CredentialOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentialRetrievalData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidateQueryData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestMatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocolType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->credentialRetrievalData:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->candidateQueryData:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->requestMatcher:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->requestType:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->protocolType:Ljava/lang/String;

    .line 2
    invoke-static {p5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p2, :cond_0

    invoke-static {p6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, p4

    .line 3
    :goto_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1f

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x13

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x45

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Either type: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", or requestType: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and protocolType: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be specified, but at least one contains an invalid blank value."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final getCandidateQueryData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->candidateQueryData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getCredentialRetrievalData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->credentialRetrievalData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getProtocolType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->protocolType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestMatcher()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->requestMatcher:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->requestType:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/CredentialOption;->type:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identitycredentials/CredentialOptionCreator;->writeToParcel(Lcom/google/android/gms/identitycredentials/CredentialOption;Landroid/os/Parcel;I)V

    return-void
.end method
