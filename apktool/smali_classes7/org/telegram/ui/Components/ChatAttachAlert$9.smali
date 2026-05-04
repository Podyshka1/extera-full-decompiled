.class Lorg/telegram/ui/Components/ChatAttachAlert$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sendPressed:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$order:Ljava/util/ArrayList;

.field final synthetic val$photos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .line 2234
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$9;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$9;->val$photos:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$9;->val$order:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionButtonPressed(ZZII)V
    .locals 6

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 2248
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$9;->val$photos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$9;->sendPressed:Z

    if-eqz p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 p1, 0x1

    .line 2251
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$9;->sendPressed:Z

    .line 2253
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2254
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$9;->val$order:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2255
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$9;->val$photos:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$9;->val$order:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2256
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 2257
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2258
    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 2259
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 2260
    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_1

    .line 2262
    :cond_2
    iput-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    .line 2264
    :goto_1
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 2265
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 2266
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 2267
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 2268
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 2269
    iget v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    .line 2270
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v3, :cond_4

    iget v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-ne v4, p1, :cond_4

    .line 2271
    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 2272
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->params:Ljava/util/HashMap;

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->params:Ljava/util/HashMap;

    .line 2275
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v1, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2277
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$9;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p4, p2, p3}, Lorg/telegram/ui/ChatActivity;->didSelectSearchPhotos(Ljava/util/ArrayList;ZI)V

    :cond_6
    :goto_3
    return-void
.end method

.method public synthetic canFinishFragment()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)Z

    move-result v0

    return v0
.end method

.method public onCaptionChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public synthetic onOpenInPressed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate$-CC;->$default$onOpenInPressed(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    return-void
.end method

.method public selectedPhotosChanged()V
    .locals 0

    return-void
.end method
