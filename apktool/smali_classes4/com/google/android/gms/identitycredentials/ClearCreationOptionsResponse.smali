.class public final Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse$Companion;


# instance fields
.field private final isDeleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse;->Companion:Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse$Companion;

    new-instance v0, Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponseCreator;

    invoke-direct {v0}, Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponseCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse;->isDeleted:Z

    return-void
.end method


# virtual methods
.method public final isDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse;->isDeleted:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponseCreator;->writeToParcel(Lcom/google/android/gms/identitycredentials/ClearCreationOptionsResponse;Landroid/os/Parcel;I)V

    return-void
.end method
