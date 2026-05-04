.class public final enum Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompletionBehavior"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

.field public static final enum AT_LEAST:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

.field public static final enum EXACT:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;


# direct methods
.method private static final synthetic $values()[Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    sget-object v1, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;->AT_LEAST:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;->EXACT:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 152
    new-instance v0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    const-string v1, "AT_LEAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;->AT_LEAST:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    .line 153
    new-instance v0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    const-string v1, "EXACT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;->EXACT:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;->$values()[Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;->$VALUES:[Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;
    .locals 1

    const-class v0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    return-object p0
.end method

.method public static values()[Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;->$VALUES:[Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    return-object v0
.end method
