.class public final synthetic Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda82;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    return-void
.end method


# virtual methods
.method public final done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZZZLorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda82;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->$r8$lambda$tOCto2IFy4NyHziuwKMTiO3WRNE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZZZLorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
