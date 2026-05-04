.class public final synthetic Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback3;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;

.field public final synthetic f$1:Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Long;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->$r8$lambda$ZZnylW7BWJ67u6eSYZgZwcTjnjk(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;Ljava/io/File;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
