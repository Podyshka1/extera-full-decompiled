.class Lorg/telegram/ui/Stories/PeerStoriesView$5;
.super Lorg/telegram/ui/Stories/StoryCaptionView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field final synthetic val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method public static synthetic $r8$lambda$G8hRhuh_UY4CGT7ddCpkljJVwlM(Lorg/telegram/ui/Stories/PeerStoriesView$5;Landroid/text/style/URLSpan;Landroid/view/View;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/PeerStoriesView$5;->lambda$onLinkLongPress$0(Landroid/text/style/URLSpan;Landroid/view/View;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$T90ynKSvfowfKwa_6ZyXaL3jw0o(Lorg/telegram/ui/Stories/PeerStoriesView$5;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$5;->lambda$onEmojiClick$4(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tpu8bwP8fqJaenUIX1U5RXzt9fo(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 1077
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public static synthetic $r8$lambda$V-hUkGeaBkjbcWtBbbJdSCJ15Os(Lorg/telegram/ui/Stories/PeerStoriesView$5;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$5;->lambda$onReplyClick$3(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vQVmjw001mEV0hmimWoOIyeWV8Q(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1040
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 932
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Stories/StoryCaptionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$onEmojiClick$4(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 2

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1103
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    new-instance p3, Lorg/telegram/ui/Components/EmojiPacksAlert;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, p1, v1, p2, v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    .line 1105
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz p1, :cond_0

    .line 1106
    invoke-interface {p1, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLinkLongPress$0(Landroid/text/style/URLSpan;Landroid/view/View;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p6, :cond_0

    .line 1034
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$5;->onLinkClick(Landroid/text/style/CharacterStyle;Landroid/view/View;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne p6, p1, :cond_1

    .line 1036
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1037
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, p4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void
.end method

.method private synthetic lambda$onReplyClick$3(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 2

    if-eqz p4, :cond_1

    .line 1069
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 1073
    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 1074
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->createOverlayStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p1

    .line 1075
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p4, v0}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    .line 1076
    new-instance p3, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda2;

    invoke-direct {p3, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/StoryViewer;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 1079
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void

    .line 1081
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->story_bomb2:I

    sget p3, Lorg/telegram/messenger/R$string;->StoryNotFound:I

    .line 1082
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x3

    .line 1083
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setTag(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x1

    .line 1084
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private processExternalUrl(ILjava/lang/String;Landroid/text/style/CharacterStyle;Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p4, :cond_3

    .line 990
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowUrlInAlert(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1002
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v3, v5, v5, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZLorg/telegram/messenger/browser/Browser$Progress;)V

    return-void

    :cond_1
    if-ne v1, v5, :cond_2

    .line 1004
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v3, v4, v4, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZLorg/telegram/messenger/browser/Browser$Progress;)V

    return-void

    :cond_2
    if-ne v1, v3, :cond_5

    .line 1006
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v3, v4, v5, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZLorg/telegram/messenger/browser/Browser$Progress;)V

    return-void

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    if-ne v1, v5, :cond_5

    .line 998
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZZLorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_5
    return-void

    .line 993
    :cond_6
    :goto_1
    instance-of v1, v2, Lorg/telegram/ui/Components/URLSpanReplacement;

    if-eqz v1, :cond_7

    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/URLSpanReplacement;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lorg/telegram/ui/Components/URLSpanReplacement;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_7

    move v14, v5

    goto :goto_2

    :cond_7
    move v14, v4

    .line 996
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v9, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v15, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v10, p2

    move-object/from16 v16, v1

    invoke-static/range {v9 .. v16}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZZZLorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 940
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onEmojiClick(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    iget-object v1, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_1

    .line 1096
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    iget-wide v1, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 1101
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$5;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v1, v0, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createContainsEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 1112
    iput v0, p1, Lorg/telegram/ui/Components/Bulletin;->tag:I

    .line 1113
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    :goto_0
    return-void
.end method

.method public onLinkClick(Landroid/text/style/CharacterStyle;Landroid/view/View;)V
    .locals 6

    .line 945
    instance-of v0, p1, Lorg/telegram/ui/Components/URLSpanUserMention;

    if-eqz v0, :cond_0

    .line 946
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/ui/Components/URLSpanUserMention;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 948
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, p1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    return-void

    .line 950
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v0, :cond_6

    .line 951
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 952
    const-string v1, "@"

    if-eqz p2, :cond_3

    const-string v2, "#"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "$"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 953
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 954
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p1, :cond_9

    .line 955
    new-instance v0, Lorg/telegram/ui/Components/HashtagActivity;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/HashtagActivity;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 958
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 959
    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 960
    const-string v1, "hashtag"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p2, :cond_9

    .line 962
    new-instance v1, Lorg/telegram/ui/Components/MediaActivity;

    invoke-direct {v1, p1, v0}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 966
    :cond_3
    invoke-static {p2}, Lorg/telegram/messenger/browser/Browser;->extractUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 968
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 969
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 970
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p2, p2, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v2, p2, v3, v0}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/messenger/browser/Browser$Progress;)V

    return-void

    .line 972
    :cond_4
    invoke-direct {p0, v3, p2, p1, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$5;->processExternalUrl(ILjava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    return-void

    .line 975
    :cond_5
    invoke-direct {p0, v3, p2, p1, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$5;->processExternalUrl(ILjava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    return-void

    .line 978
    :cond_6
    instance-of v0, p1, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_7

    .line 979
    move-object p2, p1

    check-cast p2, Landroid/text/style/URLSpan;

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    .line 980
    instance-of v1, p1, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-direct {p0, v0, p2, p1, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$5;->processExternalUrl(ILjava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    return-void

    .line 981
    :cond_7
    instance-of v0, p1, Lorg/telegram/ui/Components/URLSpanMono;

    if-eqz v0, :cond_8

    .line 982
    check-cast p1, Lorg/telegram/ui/Components/URLSpanMono;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/URLSpanMono;->copyToClipboard()V

    .line 983
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 984
    :cond_8
    instance-of v0, p1, Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_9

    .line 985
    check-cast p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p1, p2}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public onLinkLongPress(Landroid/text/style/URLSpan;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 8

    .line 1013
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 1014
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 1017
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/browser/Browser;->IDN_toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/browser/Browser;->replaceHostname(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1020
    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1022
    :goto_0
    const-string v0, "\\+"

    const-string v2, "%2b"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1024
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1027
    :try_start_2
    invoke-static {v2}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result v3

    invoke-virtual {p0, v3, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1029
    :catch_2
    new-instance v6, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v3, v2, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1030
    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1031
    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitleMultipleLines(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1032
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->allowScreenshots()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/CharSequence;

    sget v1, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    sget v3, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_2

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$5;Landroid/text/style/URLSpan;Landroid/view/View;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v6, v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1040
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda4;

    invoke-direct {p1, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1041
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    .line 1042
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object p3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 1043
    iget-object p2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p2, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public onReplyClick(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1049
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->isRepostMessage:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->messageId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1050
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1051
    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 1052
    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1054
    :cond_1
    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1056
    :goto_0
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->messageId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1057
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 1060
    :cond_2
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->storyId:Ljava/lang/Integer;

    if-nez v0, :cond_3

    goto :goto_1

    .line 1067
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->storyId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p1, v4, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$5;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1, v2, v3, v6}, Lorg/telegram/ui/Stories/StoriesController;->resolveStoryLink(JILcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 1061
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    sget v1, Lorg/telegram/messenger/R$string;->StoryHidAccount:I

    .line 1062
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 v0, 0x3

    .line 1063
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setTag(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 v0, 0x1

    .line 1064
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 935
    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
