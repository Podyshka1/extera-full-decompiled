.class public abstract Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph$Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FinalizeSessionOnCloseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;

.field private static final IMMEDIATE:I

.field private static final OFF:I

.field private static final TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;

    const/4 v0, 0x0

    .line 274
    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->OFF:I

    const/4 v0, 0x1

    .line 282
    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->IMMEDIATE:I

    const/4 v0, 0x2

    .line 290
    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->TIMEOUT:I

    return-void
.end method

.method public static final synthetic access$getIMMEDIATE$cp()I
    .locals 1

    .line 265
    sget v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->IMMEDIATE:I

    return v0
.end method

.method public static final synthetic access$getOFF$cp()I
    .locals 1

    .line 265
    sget v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->OFF:I

    return v0
.end method

.method public static final synthetic access$getTIMEOUT$cp()I
    .locals 1

    .line 265
    sget v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->TIMEOUT:I

    return v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FinalizeSessionOnCloseBehavior(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
