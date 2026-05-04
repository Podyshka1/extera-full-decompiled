.class public final Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RepeatingRequestRequirementsBeforeCapture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;
    }
.end annotation


# instance fields
.field private final completionBehavior:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

.field private final repeatingFramesToComplete:I


# direct methods
.method private constructor <init>(ILandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;)V
    .locals 1

    const-string v0, "completionBehavior"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;->repeatingFramesToComplete:I

    .line 143
    iput-object p2, p0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;->completionBehavior:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 143
    sget-object p2, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;->AT_LEAST:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    :cond_1
    const/4 p3, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;-><init>(ILandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;-><init>(ILandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;)V

    return-void
.end method


# virtual methods
.method public final getCompletionBehavior()Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;->completionBehavior:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    return-object v0
.end method

.method public final getRepeatingFramesToComplete-pVg5ArA()I
    .locals 1

    .line 142
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;->repeatingFramesToComplete:I

    return v0
.end method
