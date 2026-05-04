.class public final synthetic Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl;->$r8$lambda$kfgy1ft7hGhWsVbp27upmh1easY(Landroidx/camera/video/internal/encoder/EncoderImpl;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
