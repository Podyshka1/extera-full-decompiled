.class public final Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;->$$INSTANCE:Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final workaroundByCaptureIntentPreview(Landroidx/camera/core/impl/Quirks;)Z
    .locals 1

    const-string v0, "quirks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-class v0, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->getAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;

    .line 45
    invoke-interface {v0}, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;->workaroundByCaptureIntentPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
