.class public interface abstract Landroidx/camera/core/impl/CameraConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/ReadableConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraConfig$PostviewFormatSelector;
    }
.end annotation


# static fields
.field public static final DEFAULT_POSTVIEW_FORMAT_SELECTOR:Landroidx/camera/core/impl/CameraConfig$PostviewFormatSelector;

.field public static final OPTION_CAPTURE_PROCESS_PROGRESS_SUPPORTED:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_COMPATIBILITY_ID:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_POSTVIEW_FORMAT_SELECTOR:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_POSTVIEW_SUPPORTED:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_SESSION_PROCESSOR:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_USECASE_CONFIG_FACTORY:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_USE_CASE_COMBINATION_REQUIRED_RULE:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/Config$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const-string v0, "camerax.core.camera.useCaseConfigFactory"

    const-class v1, Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 40
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_USECASE_CONFIG_FACTORY:Landroidx/camera/core/impl/Config$Option;

    .line 43
    const-string v0, "camerax.core.camera.compatibilityId"

    const-class v1, Landroidx/camera/core/impl/Identifier;

    .line 44
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_COMPATIBILITY_ID:Landroidx/camera/core/impl/Config$Option;

    .line 47
    const-string v0, "camerax.core.camera.useCaseCombinationRequiredRule"

    const-class v1, Ljava/lang/Integer;

    .line 48
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_USE_CASE_COMBINATION_REQUIRED_RULE:Landroidx/camera/core/impl/Config$Option;

    .line 50
    const-string v0, "camerax.core.camera.SessionProcessor"

    const-class v1, Landroidx/camera/core/impl/SessionProcessor;

    .line 51
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_SESSION_PROCESSOR:Landroidx/camera/core/impl/Config$Option;

    .line 54
    const-string v0, "camerax.core.camera.isZslDisabled"

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/Config$Option;

    .line 56
    const-string v0, "camerax.core.camera.isPostviewSupported"

    .line 57
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_POSTVIEW_SUPPORTED:Landroidx/camera/core/impl/Config$Option;

    .line 59
    const-string v0, "camerax.core.camera.PostviewFormatSelector"

    const-class v2, Landroidx/camera/core/impl/CameraConfig$PostviewFormatSelector;

    invoke-static {v0, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_POSTVIEW_FORMAT_SELECTOR:Landroidx/camera/core/impl/Config$Option;

    .line 62
    const-string v0, "camerax.core.camera.isCaptureProcessProgressSupported"

    .line 63
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_CAPTURE_PROCESS_PROGRESS_SUPPORTED:Landroidx/camera/core/impl/Config$Option;

    .line 84
    new-instance v0, Landroidx/camera/core/impl/CameraConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/core/impl/CameraConfig$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/CameraConfig;->DEFAULT_POSTVIEW_FORMAT_SELECTOR:Landroidx/camera/core/impl/CameraConfig$PostviewFormatSelector;

    return-void
.end method


# virtual methods
.method public abstract getCompatibilityId()Landroidx/camera/core/impl/Identifier;
.end method

.method public abstract getSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;
.end method

.method public abstract getUseCaseCombinationRequiredRule()I
.end method

.method public abstract getUseCaseConfigFactory()Landroidx/camera/core/impl/UseCaseConfigFactory;
.end method

.method public abstract isCaptureProcessProgressSupported()Z
.end method

.method public abstract isPostviewSupported()Z
.end method
