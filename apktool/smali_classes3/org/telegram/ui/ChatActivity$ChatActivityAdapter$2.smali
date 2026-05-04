.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;


# direct methods
.method public static synthetic $r8$lambda$BjkSZZf1-BUxOi02IGPzJZHACEA(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;Lorg/telegram/ui/Cells/ChatActionCell;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->lambda$didPressReplyMessage$1(Lorg/telegram/ui/Cells/ChatActionCell;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SEa8CPsDYwv4ZSEuWLHByEgsCQo(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;Lorg/telegram/ui/Cells/ChatActionCell;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->lambda$didPressTaskLink$2(Lorg/telegram/ui/Cells/ChatActionCell;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$zM_yfpMZCT4oxcv1iO0fOfwduNI(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->lambda$didClickButton$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V
    .locals 0

    .line 36731
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initGiftProgressDialog(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 2

    .line 36789
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36790
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel(Z)V

    .line 36792
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;Lorg/telegram/ui/Cells/ChatActionCell;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method private synthetic lambda$didClickButton$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 36830
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v1, p2, p2}, Lorg/telegram/messenger/ChatThemeController;->clearWallpaper(JZZ)V

    return-void
.end method

.method private synthetic lambda$didPressReplyMessage$1(Lorg/telegram/ui/Cells/ChatActionCell;I)V
    .locals 8

    .line 37003
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 37004
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    move v2, p2

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZI)V

    return-void
.end method

.method private synthetic lambda$didPressTaskLink$2(Lorg/telegram/ui/Cells/ChatActionCell;II)V
    .locals 10

    .line 37017
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 37018
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v2, p2

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZILjava/lang/Integer;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public canDrawOutboundsContent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public didClickButton(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 2

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 36823
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 36825
    :cond_1
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isWallpaperForBoth()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isCurrentWallpaper()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36826
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->RemoveWallpaperTitle:I

    .line 36827
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->RemoveWallpaperMessage:I

    .line 36828
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Remove:I

    .line 36829
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 36832
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 36833
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 36834
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 36835
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 36837
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public didClickImage(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 20

    move-object/from16 v0, p0

    .line 36844
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 36845
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 36846
    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v3, 0x280

    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 36849
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x18

    if-ne v3, v4, :cond_0

    .line 36850
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Stories/StoryViewer;->openFor(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Cells/ChatActionCell;)V

    return-void

    :cond_0
    move-object/from16 v4, p1

    .line 36853
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x16

    if-ne v3, v5, :cond_3

    .line 36854
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13400(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 36855
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->showingCancelButton()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-gez v3, :cond_1

    iget-object v3, v1, Lorg/telegram/messenger/MessagesController;->uploadingWallpaper:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36856
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->cancelUploadWallpaper()V

    .line 36857
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mremoveMessageObject(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 36860
    :cond_1
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->hasButton()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36861
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ThemePreviewActivity;->showFor(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 36863
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowChatThemeBottomSheet(Lorg/telegram/ui/ChatActivity;)V

    return-void

    .line 36867
    :cond_3
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 36868
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v5, 0x3e8

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v3

    .line 36869
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getEmojiMarkup(Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v5

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    move-object v5, v3

    .line 36871
    :goto_0
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v7, 0x15

    if-ne v6, v7, :cond_c

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-nez v6, :cond_c

    .line 36872
    iget-boolean v1, v2, Lorg/telegram/messenger/MessageObject;->settingAvatar:Z

    if-eqz v1, :cond_5

    goto/16 :goto_4

    :cond_5
    if-eqz v5, :cond_6

    .line 36876
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v5}, Lorg/telegram/messenger/utils/PhotoUtilities;->showAvatartConstructorForUpdateUserPhoto(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    return-void

    .line 36879
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 36880
    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    .line 36881
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    if-nez v3, :cond_7

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v1

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v1

    .line 36882
    :goto_1
    new-instance v4, Ljava/io/File;

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36883
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    .line 36884
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v1, v4

    .line 36891
    :cond_8
    new-instance v8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

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

    move-object v1, v8

    .line 36892
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_9

    move v6, v5

    goto :goto_2

    :cond_9
    move v6, v4

    .line 36893
    :goto_2
    iput-boolean v6, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    .line 36894
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36896
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v6

    new-instance v11, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$2;

    invoke-direct {v11, v0, v2, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    .line 36942
    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v1, :cond_a

    .line 36943
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->SuggestedVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 36945
    :cond_a
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->SuggestedPhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer;->setTitle(Ljava/lang/CharSequence;)V

    .line 36947
    :goto_3
    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;-><init>(Lorg/telegram/tgnet/TLObject;I)V

    if-eqz v3, :cond_b

    move v4, v5

    .line 36948
    :cond_b
    iput-boolean v4, v1, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->isVideo:Z

    .line 36949
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->fromObject:Lorg/telegram/tgnet/TLRPC$User;

    .line 36950
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/PhotoViewer;->setAvatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    return-void

    :cond_c
    if-eqz v3, :cond_d

    .line 36952
    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    .line 36953
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetphotoViewerProvider(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v5}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 36954
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v1, v7, :cond_e

    .line 36955
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->SuggestedVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_d
    if-eqz v1, :cond_f

    .line 36958
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    .line 36959
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetphotoViewerProvider(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v5

    invoke-virtual {v3, v1, v2, v5}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 36960
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v1, v7, :cond_e

    .line 36961
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->SuggestedPhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer;->setTitle(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_4
    return-void

    .line 36964
    :cond_f
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetphotoViewerProvider(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v10

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    return-void
.end method

.method public didLongPress(Lorg/telegram/ui/Cells/ChatActionCell;FF)Z
    .locals 8

    .line 36980
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 36983
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateMenu(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFFZ)Z

    move-result p1

    return p1
.end method

.method public didOpenPremiumGift(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;Z)V
    .locals 7

    if-eqz p3, :cond_0

    .line 36735
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->initGiftProgressDialog(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 36736
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->show(Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void

    .line 36738
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;-><init>(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Lorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 36739
    invoke-virtual {v0, p4}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setAnimateConfetti(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    move-result-object p2

    .line 36740
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setOutboundGift(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    move-result-object p1

    .line 36738
    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public didOpenPremiumGiftChannel(Lorg/telegram/ui/Cells/ChatActionCell;Ljava/lang/String;Z)V
    .locals 0

    .line 36784
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->initGiftProgressDialog(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 36785
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p3, p3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public didPressReaction(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V
    .locals 7

    .line 36746
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/ChatActivity;->didPressReaction(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V

    return-void
.end method

.method public didPressReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V
    .locals 2

    .line 37002
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;Lorg/telegram/ui/Cells/ChatActionCell;I)V

    .line 37006
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz p1, :cond_0

    .line 37007
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msetFilterMessages(Lorg/telegram/ui/ChatActivity;ZZZ)V

    const-wide/16 p1, 0x50

    .line 37008
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 37010
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public didPressTaskLink(Lorg/telegram/ui/Cells/ChatActionCell;II)V
    .locals 1

    .line 37016
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;Lorg/telegram/ui/Cells/ChatActionCell;II)V

    .line 37020
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz p1, :cond_0

    .line 37021
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p1, p2, p3, p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msetFilterMessages(Lorg/telegram/ui/ChatActivity;ZZZ)V

    const-wide/16 p1, 0x50

    .line 37022
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 37024
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public forceUpdate(Lorg/telegram/ui/Cells/ChatActionCell;Z)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 36752
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x1

    .line 36754
    iput-boolean v0, p1, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 36757
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->hasPendingScrollPosition()Z

    move-result v1

    if-nez v1, :cond_6

    .line 36758
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_6

    .line 36759
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 36760
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_1

    .line 36762
    :cond_2
    instance-of v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_4

    .line 36763
    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 36767
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetScrollingOffsetForView(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)I

    move-result v0

    goto :goto_2

    .line 36769
    :cond_4
    instance-of v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_5

    .line 36771
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetScrollingOffsetForView(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)I

    move-result v0

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    const/4 v3, -0x1

    move v0, v2

    .line 36776
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, p1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateMessageAnimatedInternal(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)V

    if-eqz p2, :cond_7

    if-ltz v3, :cond_7

    .line 36778
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_7
    :goto_3
    return-void
.end method

.method public getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 36970
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method public synthetic getDialogId()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$getDialogId(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTopicId()J
    .locals 2

    .line 36975
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic needOpenInviteLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$needOpenInviteLink(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method public needOpenUserProfile(J)V
    .locals 1

    .line 36997
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenUserProfile(Lorg/telegram/ui/ChatActivity;J)V

    return-void
.end method

.method public needShowEffectOverlay(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 1

    .line 36817
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showAnimationForActionCell(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)Z

    return-void
.end method

.method public onTopicClick(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 36989
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 36991
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->topicsTabs:Lorg/telegram/ui/Components/TopicsTabsView;

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 36992
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getMonoForumTopicId()J

    move-result-wide v1

    const/4 p1, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->selectTopic(JZ)V

    return-void
.end method
