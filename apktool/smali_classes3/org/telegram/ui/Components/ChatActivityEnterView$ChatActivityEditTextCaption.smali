.class abstract Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;
.super Lorg/telegram/ui/Components/EditTextCaption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatActivityEditTextCaption"
.end annotation


# instance fields
.field canvasButton:Lorg/telegram/ui/Components/CanvasButton;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$3KR6IJRDBtKdspfHD7aLKuFstLg(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->lambda$onTouchEvent$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$6ceo7WcpsrWCXeKpTsQ7a1beQYk(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->lambda$editPhoto$4(Ljava/util/ArrayList;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BYkme2mAfwbXnnbdVtH66QWWRcQ(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->lambda$onTouchEvent$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$OSFz6fwRojqKAyE4mLFjghRu20c(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Landroidx/core/view/inputmethod/InputContentInfoCompat;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->lambda$onCreateInputConnection$0(Landroidx/core/view/inputmethod/InputContentInfoCompat;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$S8ho37hBuYL39a6lqL7_gUGcckE(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->lambda$onCreateInputConnection$1(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZDz5HfwzD5vmd0YOWwb8IbxGFGI(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->lambda$editPhoto$5(Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenPhotoViewerForEdit(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->openPhotoViewerForEdit(Ljava/util/ArrayList;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 5509
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 5510
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private editPhoto(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 5727
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    .line 5728
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5729
    :goto_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5727
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath(ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 5732
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$editPhoto$4(Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 0

    .line 5755
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->openPhotoViewerForEdit(Ljava/util/ArrayList;Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$editPhoto$5(Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 5733
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5734
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 5737
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputStream is null for URI: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5756
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_7

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v5, p0

    :goto_0
    move-object v1, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    :goto_1
    move-object v1, v0

    goto :goto_3

    :cond_1
    const/16 v0, 0x400

    .line 5741
    :try_start_5
    new-array v0, v0, [B

    .line 5743
    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v5, 0x0

    .line 5744
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 5747
    :cond_2
    new-instance v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 5748
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "video/mp4"

    move-object/from16 v5, p3

    .line 5749
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v15}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 5752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5753
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5755
    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda5;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v5, p0

    :try_start_6
    invoke-direct {v4, v5, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Ljava/util/ArrayList;Ljava/io/File;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 5756
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    goto :goto_1

    .line 5733
    :goto_3
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_5
    if-eqz v2, :cond_3

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 5757
    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onCreateInputConnection$0(Landroidx/core/view/inputmethod/InputContentInfoCompat;ZII)V
    .locals 0

    .line 5582
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->send(Landroidx/core/view/inputmethod/InputContentInfoCompat;ZII)V

    return-void
.end method

.method private synthetic lambda$onCreateInputConnection$1(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 3

    .line 5570
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisLiveComment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    .line 5573
    :cond_0
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastNMR1()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 5575
    :try_start_0
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    .line 5580
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    const-string p3, "image/gif"

    invoke-virtual {p2, p3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/messenger/SendMessagesHelper;->shouldSendWebPAsSticker(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 5587
    :cond_2
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->editPhoto(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    .line 5581
    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5582
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance p3, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Landroidx/core/view/inputmethod/InputContentInfoCompat;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p2, v1, v2, p3, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_2

    .line 5584
    :cond_4
    invoke-direct {p0, p1, v0, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->send(Landroidx/core/view/inputmethod/InputContentInfoCompat;ZII)V

    :goto_2
    return v0
.end method

.method private synthetic lambda$onTouchEvent$2()V
    .locals 1

    .line 5607
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mshowRestrictedHint(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$3()V
    .locals 2

    .line 5624
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputwaitingForKeyboardOpenAfterAnimation(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 5625
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V

    return-void
.end method

.method private openPhotoViewerForEdit(Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 11

    .line 5763
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5766
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 5767
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetkeyboardVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5768
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 5769
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Ljava/util/ArrayList;Ljava/io/File;)V

    const-wide/16 p1, 0x64

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 5778
    :cond_1
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5779
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    new-instance v9, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;

    invoke-direct {v9, p0, v0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Lorg/telegram/messenger/MediaController$PhotoEntry;Ljava/io/File;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private send(Landroidx/core/view/inputmethod/InputContentInfoCompat;ZII)V
    .locals 42

    move-object/from16 v0, p0

    .line 5538
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 5539
    invoke-virtual {v1, v3}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    .line 5540
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    .line 5542
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    if-eqz v1, :cond_1

    .line 5543
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->showQuoteMessageUpdate()V

    return-void

    .line 5546
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 5547
    const-string v3, "image/gif"

    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 5548
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mgetThreadMessage(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v15

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    :cond_2
    move-object/from16 v20, v2

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v3

    :cond_3
    move/from16 v21, v3

    const/16 v22, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v9, "image/gif"

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, p1

    move/from16 v17, p2

    invoke-static/range {v4 .. v22}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocument(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 5550
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v25

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v26

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v28

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mgetThreadMessage(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v29

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v30

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-nez v1, :cond_5

    move/from16 v39, v3

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v1

    move/from16 v39, v1

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    :cond_6
    move-object/from16 v40, v2

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v3

    :cond_7
    move/from16 v41, v3

    const/16 v24, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v34, p1

    move/from16 v37, p2

    invoke-static/range {v23 .. v41}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;ZIILjava/lang/String;I)V

    .line 5552
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 5553
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v2 .. v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;ZIIJ)V

    :cond_8
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 5642
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->preventInput:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5645
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .line 5658
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5659
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChatActivity;->extendActionMode(Landroid/view/Menu;)Z

    return-void

    .line 5661
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->extendActionMode(Landroid/view/Menu;)V

    return-void
.end method

.method protected getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 5833
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    return-object v0
.end method

.method protected onContextMenuClose()V
    .locals 1

    .line 5532
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5533
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onContextMenuClose()V

    :cond_0
    return-void
.end method

.method protected onContextMenuOpen()V
    .locals 1

    .line 5525
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5526
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onContextMenuOpen()V

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 6

    .line 5559
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5564
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$misEditingBusinessLink(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisLiveComment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5567
    :cond_1
    const-string v1, "image/gif"

    const-string v2, "image/*"

    const-string v3, "image/jpg"

    const-string v4, "image/png"

    const-string v5, "image/webp"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 5565
    :cond_2
    :goto_0
    invoke-static {p1, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 5569
    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;)V

    .line 5591
    invoke-static {v0, p1, v1}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 5593
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    .line 5699
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 5700
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$misEditingBusinessLink(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 5701
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingCaption()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 5702
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5704
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5705
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_2

    const/4 v1, 0x1

    .line 5707
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 5708
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 5709
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5710
    const-string v3, "image/*"

    .line 5711
    invoke-virtual {p1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "video/mp4"

    invoke-virtual {p1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 5712
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->editPhoto(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    .line 5718
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v1

    :cond_2
    return v2
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 5673
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputisInitLineCount(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 5674
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextCaption;->onMeasure(II)V

    .line 5675
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisInitLineCount(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5676
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputlineCount(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    .line 5678
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputisInitLineCount(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 5517
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onScrollChanged(IIII)V

    .line 5518
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5519
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onEditTextScroll()V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 5650
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->onSelectionChanged(II)V

    .line 5651
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5652
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextSelectionChanged(II)V

    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 3

    const v0, 0x1020022

    if-ne p1, v0, :cond_0

    .line 5684
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputisPaste(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 5686
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 5687
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5689
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$misEditingBusinessLink(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5690
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->editPhoto(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5694
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 5600
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstickersDragging(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstickersExpansionAnim(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 5603
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendPlainEnabled:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5604
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v0, :cond_1

    .line 5605
    new-instance v0, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 5606
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 5610
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/telegram/ui/Components/CanvasButton;->setRect(IIII)V

    .line 5611
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5613
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 5614
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsearchingType(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 5615
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$msetSearchingTypeInternal(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 5616
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    .line 5617
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 5619
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mshowPopup(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V

    .line 5620
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstickersExpanded(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 5621
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v1, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    .line 5622
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputwaitingForKeyboardOpenAfterAnimation(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 5623
    new-instance p1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;)V

    const-wide/16 v1, 0xc8

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 5628
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V

    :goto_1
    return v0

    .line 5633
    :cond_6
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5635
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return v1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 5838
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendPlainEnabled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5841
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onKeyboardShown()V

    .line 5842
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 2

    .line 5667
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5668
    invoke-super {p0, p1}, Landroid/widget/EditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setOffsetY(F)V
    .locals 1

    .line 5847
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    .line 5848
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsizeNotifierLayout(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5849
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsizeNotifierLayout(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsizeNotifierLayout(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
