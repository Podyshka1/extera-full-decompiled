.class public final Lcom/google/android/gms/identitycredentials/ClearExportResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identitycredentials/ClearExportResponse$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/identitycredentials/ClearExportResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/google/android/gms/identitycredentials/ClearExportResponse$Companion;


# instance fields
.field private final isDeleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/ClearExportResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/identitycredentials/ClearExportResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/identitycredentials/ClearExportResponse;->Companion:Lcom/google/android/gms/identitycredentials/ClearExportResponse$Companion;

    new-instance v0, Lcom/google/android/gms/identitycredentials/ClearExportResponseCreator;

    invoke-direct {v0}, Lcom/google/android/gms/identitycredentials/ClearExportResponseCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/identitycredentials/ClearExportResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/identitycredentials/ClearExportResponse;->isDeleted:Z

    return-void
.end method


# virtual methods
.method public final isDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/identitycredentials/ClearExportResponse;->isDeleted:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identitycredentials/ClearExportResponseCreator;->writeToParcel(Lcom/google/android/gms/identitycredentials/ClearExportResponse;Landroid/os/Parcel;I)V

    return-void
.end method
