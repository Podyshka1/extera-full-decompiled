.class public final synthetic Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda75;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda75;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    return-void
.end method


# virtual methods
.method public final decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda75;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->$r8$lambda$wool7BxnnfiQl-BTW6dADD4B7ig(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
