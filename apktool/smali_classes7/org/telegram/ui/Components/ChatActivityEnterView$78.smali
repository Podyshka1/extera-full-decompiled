.class Lorg/telegram/ui/Components/ChatActivityEnterView$78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$BjLz-rTVLjMgtU2j9ovE4aJWNhQ(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->lambda$onClearEmojiRecent$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OGsAPkyKXlgUpK4B5B7C2WcbrME(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIIZLjava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->lambda$onGifSelected$2(Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIIZLjava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lvLGjxck8O3GC6BYDcN4D_Tj6sE(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIIZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->lambda$onGifSelected$3(Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIIZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wn8_KgobA1NuXK76IlhXghlMLBU(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->lambda$onCustomEmojiSelected$0(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$yXsGRblyXzl8ogfhpd2oQrVqyUs(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;ZZII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->lambda$onGifSelected$1(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;ZZII)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 11563
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClearEmojiRecent$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 12062
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->clearRecentEmoji()V

    return-void
.end method

.method private synthetic lambda$onCustomEmojiSelected$0(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V
    .locals 4

    .line 11603
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_0

    return-void

    .line 11606
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v0, v1

    .line 11611
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    .line 11612
    new-instance v2, Landroid/text/SpannableString;

    if-nez p1, :cond_2

    const-string p1, "\ud83d\ude00"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    .line 11615
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 11617
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-direct {p1, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    :goto_1
    if-nez p5, :cond_4

    const/4 p2, 0x1

    .line 11620
    iput-boolean p2, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fromEmojiKeyboard:Z

    .line 11622
    :cond_4
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    .line 11623
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {v2, p1, v1, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11624
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11625
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p3

    add-int/2addr v0, p3

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11629
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    return-void

    .line 11627
    :goto_3
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 11629
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    .line 11630
    throw p1
.end method

.method private synthetic lambda$onGifSelected$1(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;ZZII)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    move/from16 v9, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    .line 11945
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZIILorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    return-void
.end method

.method private synthetic lambda$onGifSelected$2(Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIIZLjava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 57

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 11955
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstickersExpanded(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 11956
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsearchingType(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 11957
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 11959
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3, v5, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    .line 11961
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->getReplyToStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v3

    move-object v8, v3

    goto :goto_0

    :cond_2
    move-object v8, v6

    .line 11962
    :goto_0
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v26, 0x3e8

    if-eqz v3, :cond_e

    .line 11963
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_3

    .line 11966
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object v7, v3

    goto :goto_1

    :cond_3
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    .line 11968
    iput-boolean v4, v7, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    .line 11969
    invoke-virtual {v7}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v3

    .line 11970
    iput-boolean v5, v7, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    .line 11971
    iput-boolean v4, v7, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    if-eqz v3, :cond_a

    .line 11974
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11975
    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 11976
    iget-boolean v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v4, :cond_5

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 11977
    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 11978
    iget-boolean v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v4, :cond_6

    .line 11979
    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController$PhotoEntry;->clone()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->originalPhotoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    goto :goto_3

    .line 11981
    :cond_5
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 11982
    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 11984
    :cond_6
    :goto_3
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 11985
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->coverPath:Ljava/lang/String;

    .line 11986
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->coverPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 11987
    iget-boolean v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 11988
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v6

    :goto_4
    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 11989
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 11990
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 11991
    iget v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    .line 11992
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 11993
    iget-boolean v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    iput-boolean v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->canDeleteAfter:Z

    .line 11994
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    invoke-static {v4}, Lorg/telegram/messenger/SendMessagesHelper;->checkUpdateStickersOrder(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->updateStickersOrder:Z

    .line 11995
    iget-boolean v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iput-boolean v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->hasMediaSpoilers:Z

    .line 11996
    iget-wide v7, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    iput-wide v7, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->stars:J

    .line 11997
    iget-boolean v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    iput-boolean v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->highQuality:Z

    .line 11998
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11999
    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    .line 12001
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v28

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v30

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v32

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mgetThreadMessage(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v33

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v35

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteditingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v38

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    iget-object v6, v2, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    :cond_8
    move-object/from16 v45, v6

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v5

    :cond_9
    move/from16 v46, v5

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v47

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMonoForumPeerId()J

    move-result-wide v52

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v54

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v39, p3

    move/from16 v40, p4

    move/from16 v41, p5

    move/from16 v49, p6

    move-object/from16 v29, v1

    invoke-static/range {v28 .. v54}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZZLorg/telegram/messenger/MessageObject;ZIIIZLandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;)V

    goto/16 :goto_9

    .line 12003
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v9

    if-eqz v2, :cond_b

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_b
    move-object v2, v6

    :goto_5
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mgetThreadMessage(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v14

    if-eqz v14, :cond_c

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    :cond_c
    move-object/from16 v18, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v5

    :cond_d
    move/from16 v19, v5

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMonoForumPeerId()J

    move-result-wide v22

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v24

    move v6, v4

    move-wide v4, v9

    move-object v9, v12

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v25, p6

    move-object/from16 v17, p9

    move-object v6, v2

    move-object v10, v8

    move-object v8, v11

    move-object v11, v13

    move/from16 v13, p3

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, p8

    invoke-virtual/range {v1 .. v25}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;JLjava/lang/CharSequence;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZIIZLjava/lang/Object;Ljava/lang/String;IJJLorg/telegram/messenger/MessageSuggestionParams;Z)V

    move-object/from16 v15, v17

    .line 12004
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long v3, v3, v26

    long-to-int v3, v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MediaDataController;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 12005
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 12006
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v15, v2}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_9

    :cond_e
    move-object/from16 v15, p9

    .line 12009
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_15

    .line 12010
    check-cast v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 12012
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_f

    .line 12013
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long v9, v9, v26

    long-to-int v7, v9

    invoke-virtual {v2, v3, v7, v5}, Lorg/telegram/messenger/MediaDataController;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 12014
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 12015
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, v15, v3}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 12019
    :cond_f
    move-object v2, v15

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 12021
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 12022
    const-string v2, "id"

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "query_id"

    invoke-virtual {v9, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12024
    const-string v2, "force_gif"

    const-string v3, "1"

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_12

    .line 12027
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v7

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mgetThreadMessage(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v15

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    iget-object v6, v3, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    :cond_10
    move-object/from16 v19, v6

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v3

    move/from16 v20, v3

    goto :goto_6

    :cond_11
    move/from16 v20, v5

    :goto_6
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMonoForumPeerId()J

    move-result-wide v23

    const/4 v14, 0x0

    const/16 v18, 0x0

    move/from16 v16, p3

    move/from16 v17, p4

    move-object v8, v1

    move-object v6, v2

    invoke-static/range {v6 .. v24}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZIILjava/lang/String;IJJ)V

    goto/16 :goto_8

    .line 12029
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v9

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mgetThreadMessage(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v12

    if-eqz v12, :cond_13

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    :cond_13
    move-object/from16 v16, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    if-eqz v6, :cond_14

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v6

    move/from16 v17, v6

    goto :goto_7

    :cond_14
    move/from16 v17, v5

    :goto_7
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMonoForumPeerId()J

    move-result-wide v20

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v22

    move v6, v4

    move-wide/from16 v55, v9

    move v9, v5

    move-wide/from16 v4, v55

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    move/from16 v12, p4

    move/from16 v13, p5

    move-object v6, v3

    move-object v9, v11

    move/from16 v11, p3

    move-object/from16 v3, p8

    invoke-virtual/range {v1 .. v22}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZIIZLjava/lang/Object;Ljava/lang/String;IJJLorg/telegram/messenger/MessageSuggestionParams;)V

    .line 12031
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsearchingType(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    if-eqz v1, :cond_15

    .line 12032
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static {v1, v9, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$msetSearchingTypeInternal(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 12033
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    .line 12034
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 12037
    :cond_15
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 12038
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-interface/range {v2 .. v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;ZIIJ)V

    :cond_16
    return-void
.end method

.method private synthetic lambda$onGifSelected$3(Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIIZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 11

    .line 11954
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIIZLjava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12041
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showConfirmAlert(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 12042
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canAddCaptionToGif(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canSchedule()Z
    .locals 1

    .line 12137
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->canScheduleMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDialogId()J
    .locals 2

    .line 12147
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgressToSearchOpened()F
    .locals 1

    .line 12188
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsearchToOpenProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    return v0
.end method

.method public getThreadId()I
    .locals 1

    .line 12152
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mgetThreadMessageId(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    return v0
.end method

.method public invalidateEnterView()V
    .locals 1

    .line 12183
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .line 12132
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstickersExpanded(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    return v0
.end method

.method public isInScheduleMode()Z
    .locals 1

    .line 12142
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSearchOpened()Z
    .locals 1

    .line 12127
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsearchingType(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUserSelf()Z
    .locals 4

    .line 11567
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimatedEmojiUnlockClick()V
    .locals 4

    .line 11636
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11638
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 11640
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    if-eqz v0, :cond_1

    .line 11642
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 11644
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public onBackspace()Z
    .locals 4

    .line 11572
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11575
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public onClearEmojiRecent()V
    .locals 3

    .line 12056
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12059
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 12060
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12061
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12062
    sget v1, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$78;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12063
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 12064
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCustomEmojiSelected(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Z)V
    .locals 7

    .line 11602
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;

    move-object v1, p0

    move-wide v4, p1

    move-object v3, p3

    move-object v2, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 4

    .line 11581
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_0

    return-void

    .line 11584
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v0, v1

    .line 11589
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    .line 11590
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 11591
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11592
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 11593
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11597
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11595
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11597
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputinnerTextChange(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    .line 11598
    throw p1
.end method

.method public onEmojiSettingsClick(Ljava/util/ArrayList;)V
    .locals 3

    .line 11684
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11685
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p1}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 11936
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZIILorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    return-void
.end method

.method public onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZIILorg/telegram/messenger/MediaController$PhotoEntry;Z)V
    .locals 14

    .line 11940
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    if-eqz v0, :cond_0

    .line 11941
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->showQuoteMessageUpdate()V

    return-void

    .line 11944
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->isInScheduleMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p6, :cond_1

    .line 11945
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda0;

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 11947
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslowModeTimer(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11948
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11949
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslowModeButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;

    move-result-object p1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslowModeButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V

    :cond_3
    return-void

    .line 11953
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda1;

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v7, p8

    move/from16 v11, p9

    invoke-direct/range {v4 .. v13}, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIIZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v2, v3, v1, v4}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method

.method public onGifSelectedForAddCaption(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 11696
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 11698
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 11699
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 11704
    :cond_1
    new-instance v4, Ljava/io/File;

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11705
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 11706
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    .line 11714
    :cond_3
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 11715
    new-instance v8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 11717
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v19}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 11721
    iput-object v2, v8, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 11722
    iput-boolean v0, v8, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    .line 11723
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11725
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v9

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$78$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 p6, v0

    move-object/from16 p7, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p2, v7

    move-object/from16 p1, v9

    invoke-virtual/range {p1 .. p7}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    return-void
.end method

.method public onSearchOpenClose(I)V
    .locals 3

    .line 12116
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$msetSearchingTypeInternal(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    if-eqz p1, :cond_1

    .line 12118
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, v1, v1, v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZZ)V

    .line 12120
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiTabOpen(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsearchingType(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 12121
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkStickresExpandHeight()V

    :cond_2
    return-void
.end method

.method public onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V
    .locals 9

    .line 12069
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettrendingStickersAlert(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettrendingStickersAlert(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12070
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettrendingStickersAlert(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/TrendingStickersAlert;->getLayout()Lorg/telegram/ui/Components/TrendingStickersLayout;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->showStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void

    .line 12073
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 12075
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    :cond_1
    move-object v3, v0

    if-eqz v3, :cond_4

    .line 12077
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 12081
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 12082
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 12083
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    :cond_3
    move-object v4, p2

    .line 12085
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    .line 12086
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz p3, :cond_4

    .line 12088
    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert;->enableEditMode()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStickerSelected(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZII)V
    .locals 11

    .line 11650
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisLiveComment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 11651
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettrendingStickersAlert(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11652
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettrendingStickersAlert(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TrendingStickersAlert;->dismiss()V

    .line 11653
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtrendingStickersAlert(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/TrendingStickersAlert;)V

    .line 11655
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslowModeTimer(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11656
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 11657
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslowModeButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;

    move-result-object p1

    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslowModeButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p2, p1, v1, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V

    return-void

    .line 11661
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstickersExpanded(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11662
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsearchingType(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 11663
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$msetSearchingTypeInternal(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 11664
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(ZJ)V

    .line 11665
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 11667
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v0, v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    .line 11669
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZII)V

    .line 11670
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11671
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p4, p2}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 8

    .line 12094
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x2

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method

.method public onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 8

    .line 12099
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method

.method public onStickersGroupClick(J)V
    .locals 2

    .line 12104
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12105
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12106
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    .line 12108
    :cond_0
    new-instance v0, Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/GroupStickersActivity;-><init>(J)V

    .line 12109
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetinfo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/GroupStickersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 12110
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public onStickersSettingsClick()V
    .locals 4

    .line 11677
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11678
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public onTabOpened(I)V
    .locals 2

    .line 12050
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onStickersTab(Z)V

    .line 12051
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetupdateExpandabilityRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showTrendingStickersAlert(Lorg/telegram/ui/Components/TrendingStickersLayout;)V
    .locals 7

    .line 12157
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12159
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    :cond_0
    move-object v4, v0

    if-eqz v4, :cond_2

    .line 12162
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$78$2;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$78$2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/TrendingStickersLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtrendingStickersAlert(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/TrendingStickersAlert;)V

    .line 12174
    iget-object p1, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12175
    iget-object p1, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTrendingStickersShowed(Z)V

    .line 12177
    :cond_1
    iget-object p1, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettrendingStickersAlert(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_2
    move-object v2, p0

    return-void
.end method
