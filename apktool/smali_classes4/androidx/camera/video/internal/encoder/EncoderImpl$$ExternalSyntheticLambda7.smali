.class public final synthetic Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda7;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda7;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda7;->f$1:I

    iget-object v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Landroidx/camera/video/internal/encoder/EncoderImpl;->$r8$lambda$DuV7EotEI0GTuGfnrWFkV2hprEs(Landroidx/camera/video/internal/encoder/EncoderImpl;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
