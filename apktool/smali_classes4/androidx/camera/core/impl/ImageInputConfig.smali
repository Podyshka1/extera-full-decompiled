.class public interface abstract Landroidx/camera/core/impl/ImageInputConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/ReadableConfig;


# static fields
.field public static final OPTION_INPUT_DYNAMIC_RANGE:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_SECONDARY_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-string v0, "camerax.core.imageInput.inputFormat"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    .line 31
    const-string v0, "camerax.core.imageInput.secondaryInputFormat"

    .line 32
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_SECONDARY_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    .line 33
    const-string v0, "camerax.core.imageInput.inputDynamicRange"

    const-class v1, Landroidx/camera/core/DynamicRange;

    .line 34
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_DYNAMIC_RANGE:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method


# virtual methods
.method public abstract getDynamicRange()Landroidx/camera/core/DynamicRange;
.end method

.method public abstract getInputFormat()I
.end method

.method public abstract hasDynamicRange()Z
.end method
