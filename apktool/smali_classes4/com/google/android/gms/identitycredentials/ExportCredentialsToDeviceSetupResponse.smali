.class public final Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse$Companion;


# instance fields
.field private final responseBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse;->Companion:Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse$Companion;

    new-instance v0, Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponseCreator;

    invoke-direct {v0}, Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponseCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "responseBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse;->responseBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getResponseBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse;->responseBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponseCreator;->writeToParcel(Lcom/google/android/gms/identitycredentials/ExportCredentialsToDeviceSetupResponse;Landroid/os/Parcel;I)V

    return-void
.end method
