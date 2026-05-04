.class public interface abstract Landroidx/camera/core/internal/IoConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/ReadableConfig;


# static fields
.field public static final OPTION_IO_EXECUTOR:Landroidx/camera/core/impl/Config$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "camerax.core.io.ioExecutor"

    const-class v1, Ljava/util/concurrent/Executor;

    .line 38
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/internal/IoConfig;->OPTION_IO_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method
