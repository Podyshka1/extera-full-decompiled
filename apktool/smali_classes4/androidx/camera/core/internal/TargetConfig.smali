.class public interface abstract Landroidx/camera/core/internal/TargetConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/ReadableConfig;


# static fields
.field public static final OPTION_TARGET_CLASS:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "camerax.core.target.name"

    const-class v1, Ljava/lang/String;

    .line 42
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    .line 48
    const-string v0, "camerax.core.target.class"

    const-class v1, Ljava/lang/Class;

    .line 49
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_CLASS:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method


# virtual methods
.method public abstract getTargetName()Ljava/lang/String;
.end method

.method public abstract getTargetName(Ljava/lang/String;)Ljava/lang/String;
.end method
