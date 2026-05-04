.class public final synthetic Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;->f$1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->$r8$lambda$mvoSLiz6pwtVPsI538obdN6IPe8(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    return-void
.end method
