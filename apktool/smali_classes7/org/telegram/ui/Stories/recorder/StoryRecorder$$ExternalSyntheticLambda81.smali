.class public final synthetic Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda81;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda81;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->$r8$lambda$SoI5L2hsyRN4QfgLXv6Q4XOc1Cw(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    return-void
.end method
