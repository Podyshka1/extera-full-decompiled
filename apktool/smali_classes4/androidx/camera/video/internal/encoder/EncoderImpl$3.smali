.class Landroidx/camera/video/internal/encoder/EncoderImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/TimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/internal/encoder/EncoderImpl;->transformTimeProvider(Landroidx/camera/video/internal/encoder/TimeProvider;Landroidx/arch/core/util/Function;)Landroidx/camera/video/internal/encoder/TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$baseTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

.field final synthetic val$transform:Landroidx/arch/core/util/Function;


# direct methods
.method constructor <init>(Landroidx/arch/core/util/Function;Landroidx/camera/video/internal/encoder/TimeProvider;)V
    .locals 0

    .line 1129
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->val$transform:Landroidx/arch/core/util/Function;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->val$baseTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public realtimeUs()J
    .locals 3

    .line 1137
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->val$transform:Landroidx/arch/core/util/Function;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->val$baseTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    invoke-interface {v1}, Landroidx/camera/video/internal/encoder/TimeProvider;->realtimeUs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public uptimeUs()J
    .locals 3

    .line 1132
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->val$transform:Landroidx/arch/core/util/Function;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$3;->val$baseTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    invoke-interface {v1}, Landroidx/camera/video/internal/encoder/TimeProvider;->uptimeUs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
