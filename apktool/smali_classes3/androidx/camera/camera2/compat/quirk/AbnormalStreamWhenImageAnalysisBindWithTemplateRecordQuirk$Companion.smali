.class public final Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isSamsungM55(Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk$Companion;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk$Companion;->isSamsungM55()Z

    move-result p0

    return p0
.end method

.method private final isSamsungM55()Z
    .locals 3

    .line 44
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "m55xq"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk$Companion;->isSamsungM55()Z

    move-result v0

    return v0
.end method
