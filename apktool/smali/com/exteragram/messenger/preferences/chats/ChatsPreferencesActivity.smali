.class public Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;
    }
.end annotation


# instance fields
.field private bottomButton:[Ljava/lang/CharSequence;

.field private cameraSettingsExpanded:Z

.field private cameraType:[Ljava/lang/CharSequence;

.field private doubleTapActions:[Ljava/lang/CharSequence;

.field private doubleTapCell:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

.field private doubleTapOutActions:[Ljava/lang/CharSequence;

.field private doubleTapSeekDuration:[Ljava/lang/CharSequence;

.field private hideReactionsExpanded:Z

.field private final languageCodes:Ljava/util/List;

.field private messageMenuExpanded:Z

.field private messagesPreviewCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

.field private pauseOnMinimizeExpanded:Z

.field private quickTransitionsExpanded:Z

.field private recognitionLanguageOptions:[Ljava/lang/CharSequence;

.field private replyElementsExpanded:Z

.field private resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private stickerShapeCell:Lcom/exteragram/messenger/preferences/chats/components/StickerShapeCell;

.field private stickerSizeCell:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

.field private videoMessagesCamera:[Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$-MHbNuzZx5UwiFFe_luEyxWquNY(Ljava/lang/Boolean;)V
    .locals 2

    .line 650
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rounddual_available"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic $r8$lambda$-Xe-3EIfSovphcjPUHh4gGWN9L8(Ljava/lang/Boolean;)V
    .locals 0

    .line 630
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->showReportButton:Z

    return-void
.end method

.method public static synthetic $r8$lambda$2QFlJUuCtPcNhoj3Cuh05y6mKYs(Ljava/lang/Boolean;)V
    .locals 0

    .line 666
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hidePhotoCounter:Z

    return-void
.end method

.method public static synthetic $r8$lambda$46YNjvDwf788Bu41OrQ9P7CSwE4(Ljava/lang/Boolean;)V
    .locals 0

    .line 681
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeVoice:Z

    return-void
.end method

.method public static synthetic $r8$lambda$51Mep2v9aXyWfuTy25W82gkHUtE(Ljava/lang/Boolean;)V
    .locals 0

    .line 551
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInGroups:Z

    return-void
.end method

.method public static synthetic $r8$lambda$5ALsusNe8-X5fsJ-HWZJZKcKBW4(Ljava/lang/Boolean;)V
    .locals 0

    .line 674
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->swipeToPip:Z

    return-void
.end method

.method public static synthetic $r8$lambda$5dQHRPAr58yPhX6sbgHPDpMlo0w(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Ljava/lang/String;Lorg/telegram/ui/Components/UItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$handleSpeechRecognitionLanguageClick$55(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5puHLcyqwR1S84sLcJeEb9Efu-0(Ljava/lang/Boolean;)V
    .locals 0

    .line 642
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->groupMessageMenu:Z

    return-void
.end method

.method public static synthetic $r8$lambda$6KKIK-qJQwxZ3nNV5pvsbSmejo4(Ljava/lang/Boolean;)V
    .locals 0

    .line 610
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->showCopyPhotoButton:Z

    return-void
.end method

.method public static synthetic $r8$lambda$7MB3DQpempMz15WwEAbngGJdHZk(Ljava/lang/Boolean;)V
    .locals 0

    .line 555
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInPrivateChats:Z

    return-void
.end method

.method public static synthetic $r8$lambda$8-Ytzjg0mbQ4BIYasmZk8ObEr8s(Ljava/lang/Boolean;)V
    .locals 0

    .line 524
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideStickerTime:Z

    return-void
.end method

.method public static synthetic $r8$lambda$9l6hIhOtmMHBpM3jHw5cWKEuizc(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleCameraSettingsSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9mEsnqrQiyUKLglk92xfF1QztaI(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleHideReactionsSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9y_tT6wf0ICDnjP3XpAqb2VfXGo(Ljava/lang/Boolean;)V
    .locals 0

    .line 581
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->disableGreetingSticker:Z

    return-void
.end method

.method public static synthetic $r8$lambda$A7upsIhjRF2vYDzAXWfJwUWCnwE(Ljava/lang/Boolean;)V
    .locals 0

    .line 589
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->replaceEditedWithIcon:Z

    return-void
.end method

.method public static synthetic $r8$lambda$BHj9ZSyaqWFIcFltXb9IRQuMDW0(Ljava/lang/Boolean;)V
    .locals 0

    .line 544
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->unlimitedRecentStickers:Z

    return-void
.end method

.method public static synthetic $r8$lambda$E8jBBRdKl7ZCz1yIMccCIOi74n4(Ljava/lang/String;Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;)Z
    .locals 0

    .line 907
    invoke-virtual {p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GTc5mkADyq7zY72oIdXbUHQ0f9A(Ljava/lang/Boolean;)V
    .locals 0

    .line 593
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->showOnlineStatus:Z

    return-void
.end method

.method public static synthetic $r8$lambda$JDhd7B9jUg7RTAjtfPCbTJB7Mgg(Lcom/exteragram/messenger/speech/ui/LoadingModelView;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 927
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/speech/ui/LoadingModelView;->setProgress(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$JTOzmQu6oEHTOE0n8OxuUXUAhjg(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$onClick$48(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KKw6wZL_69OGFHVXxvn884AX75I(Ljava/lang/Boolean;)V
    .locals 0

    .line 645
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->postprocessingWithAi:Z

    return-void
.end method

.method public static synthetic $r8$lambda$LTMGHoL26GcW7NUxcC9xENu00OE(Ljava/lang/Boolean;)V
    .locals 0

    .line 607
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideShareButton:Z

    return-void
.end method

.method public static synthetic $r8$lambda$MhSu-TKmf_JeQnexmFts0Rb2Ih4(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$onClick$13(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NeFMEnskYt_94zHt29J3JCKo758(Ljava/lang/Boolean;)V
    .locals 0

    .line 533
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->replyEmoji:Z

    return-void
.end method

.method public static synthetic $r8$lambda$NzfqOHt27yW8i9Fk4fB4OIbkmow(Ljava/lang/Boolean;)V
    .locals 0

    .line 622
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->showClearButton:Z

    return-void
.end method

.method public static synthetic $r8$lambda$P-Td86qXZWJuQBDTy-IGFzoZWr8(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$createView$1(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$P8eCRk17g2J7qaC4q8Ss24YsUjU(Ljava/lang/Boolean;)V
    .locals 0

    .line 597
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->removeMessageTail:Z

    return-void
.end method

.method public static synthetic $r8$lambda$PwyMHwQkb6Kklycp0iIwqZDN6KE(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 181
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic $r8$lambda$QY9ioXiX1MWZpWFt6IYcKImLdLo(Ljava/lang/Boolean;)V
    .locals 0

    .line 664
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->alwaysSendInHD:Z

    return-void
.end method

.method public static synthetic $r8$lambda$S8v57SNId2-9KsRYswsID0nS2m4(Ljava/lang/Boolean;)V
    .locals 0

    .line 672
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->preferOriginalQuality:Z

    return-void
.end method

.method public static synthetic $r8$lambda$X2rYQkx1-VN7ZzZLcRLv57cUuU8(Ljava/lang/Boolean;)V
    .locals 0

    .line 654
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->cameraStabilization:Z

    return-void
.end method

.method public static synthetic $r8$lambda$YXUQVPNBSvhNbSK9eM-Jck-0mBw(Ljava/lang/Boolean;)V
    .locals 0

    .line 626
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->showHistoryButton:Z

    return-void
.end method

.method public static synthetic $r8$lambda$Z38iYJkbicxWcXLPOwwR_h-Bh80(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$onClick$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZRx4OlVrvOVgG9mi26j_qAUlwG4(Ljava/lang/Boolean;)V
    .locals 0

    .line 587
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideSendAsPeer:Z

    return-void
.end method

.method public static synthetic $r8$lambda$ZSn66YCYvfY8DItnMcbsSb7_KRs(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getRecognitionLanguageOption(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZzyWmVbGeew3vnlgcDN1BhroIoQ(Ljava/lang/Boolean;)V
    .locals 0

    .line 683
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeRound:Z

    return-void
.end method

.method public static synthetic $r8$lambda$_A4idUQFic-UIcVjzuA5K7kRudQ(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Lorg/telegram/ui/Components/UItem;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$handleSpeechRecognitionLanguageClick$61(Lorg/telegram/ui/Components/UItem;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aYEi2cqbmkpQlcFjlFcGYSlwyUI(Ljava/lang/Boolean;)V
    .locals 0

    .line 579
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->quickTransitionForTopics:Z

    return-void
.end method

.method public static synthetic $r8$lambda$bQvbds4wx9Q_2lnKfnw_mdOtrXo(Ljava/lang/Boolean;)V
    .locals 0

    .line 676
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->unmuteWithVolumeButtons:Z

    return-void
.end method

.method public static synthetic $r8$lambda$cmcrWjNW7xVG3DPdwX8MHalYhVo(Ljava/lang/Boolean;)V
    .locals 0

    .line 529
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->replyColors:Z

    return-void
.end method

.method public static synthetic $r8$lambda$d2TCr99eQbkpCaCENSsv7J7BhGY(Ljava/lang/Boolean;)V
    .locals 0

    .line 638
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->showDetailsButton:Z

    return-void
.end method

.method public static synthetic $r8$lambda$dV49iIACUENmCVsHXhAXKdR_0eA(Ljava/lang/Boolean;)V
    .locals 0

    .line 634
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->showGenerateButton:Z

    return-void
.end method

.method public static synthetic $r8$lambda$dVnZP9R3VEKztkxmd9zFxdlGX7I(Ljava/lang/Boolean;)V
    .locals 0

    .line 583
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideKeyboardOnScroll:Z

    return-void
.end method

.method public static synthetic $r8$lambda$eCq7p72isBV5esVMKbEVH33gP8A(Ljava/lang/Boolean;)V
    .locals 0

    .line 679
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeVideo:Z

    return-void
.end method

.method public static synthetic $r8$lambda$fzotY4wmz2K0Z0tUrNq62kUah94(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleReplyElementsSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hFQFQGW44wb1iXdzYl-vQfPMerQ(Ljava/lang/Boolean;)V
    .locals 0

    .line 656
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->cameraMirrorMode:Z

    return-void
.end method

.method public static synthetic $r8$lambda$iD7ThAAHEDiHVmcZ-2DgsAIttJE(Ljava/lang/Boolean;)V
    .locals 0

    .line 585
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->addCommaAfterMention:Z

    return-void
.end method

.method public static synthetic $r8$lambda$iwYpwVMPxbcsOf7YbypVyCBxhIM(Ljava/lang/Boolean;)V
    .locals 0

    .line 662
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->staticZoom:Z

    return-void
.end method

.method public static synthetic $r8$lambda$j7mjLKuS8R8f5elhxST6ACA4DAQ(Ljava/lang/Boolean;)V
    .locals 0

    .line 668
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    return-void
.end method

.method public static synthetic $r8$lambda$k9CbZ1YYTc9ldl6aC2bkhLulsMc(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kdebr1TAgneKRArOHJThK4B0KCg(Ljava/lang/Boolean;)V
    .locals 0

    .line 652
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->extendedFramesPerSecond:Z

    return-void
.end method

.method public static synthetic $r8$lambda$l2cVPEv54zPeFYMgu4FwzVK5s9g([Z[JLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 3

    const/4 v0, 0x0

    .line 931
    aget-boolean p0, p0, v0

    if-nez p0, :cond_0

    .line 932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 933
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$nLzStdfN4dxCOuCfCWuNf3fxkjo(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$onClick$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nYnmcip7hEOatGxGzvDe4wqAOD4(Ljava/lang/Boolean;)V
    .locals 0

    .line 618
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->showRepeatMessageButton:Z

    return-void
.end method

.method public static synthetic $r8$lambda$oNiGDqaObfg4t5VLPrKbiZs9G8o(Ljava/lang/Boolean;)V
    .locals 0

    .line 537
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->replyBackground:Z

    return-void
.end method

.method public static synthetic $r8$lambda$ow_RULhEMY20tLgHsQAeZpz6a8c(Ljava/lang/String;Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;)Z
    .locals 0

    .line 904
    invoke-virtual {p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pS6Od24EQHCYN0NGip4GQ4dcmcE(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleMessageMenuSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pe7Bt1xbEJrTxNAZEqZZwSdJzLI(Ljava/lang/Boolean;)V
    .locals 0

    .line 614
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->showSaveMessageButton:Z

    return-void
.end method

.method public static synthetic $r8$lambda$qbwmESlrAeNR7_liOb2Hw6vOhug(Ljava/lang/Boolean;)V
    .locals 0

    .line 577
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->quickTransitionForChannels:Z

    return-void
.end method

.method public static synthetic $r8$lambda$rv10Gu9673cODFGH3fG7We7CoD4(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Ljava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$handleSpeechRecognitionLanguageClick$60(Ljava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tla3uGd_vXpAyZx_mqz6vqNg72M(Ljava/lang/Boolean;)V
    .locals 0

    .line 660
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->rememberLastUsedCamera:Z

    return-void
.end method

.method public static synthetic $r8$lambda$tx5eqU_q0R1x8OlaVynspe2vOWI(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$createView$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u0w7A-wb6mpqK04QxlfBnal9MP0(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$onClick$37(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uUv-HKRZccj_62nOQVEtDxsnZIc(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleQuickTransitionsSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhdlznoKVLJRgmsXniULFjLB-h0(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->lambda$onClick$42(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x09EetjZ1I8PaBR-KaZdsTKmsqU(Ljava/lang/Boolean;)V
    .locals 0

    .line 547
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInChannels:Z

    return-void
.end method

.method public static synthetic $r8$lambda$yk52rkd4gEjPKPbZ7WATj_TcwwU(Ljava/lang/Boolean;)V
    .locals 0

    .line 603
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->showResultsBeforeVoting:Z

    return-void
.end method

.method public static synthetic $r8$lambda$z5T2b86aMakIcjnA7YQyxNaxxxc(Ljava/lang/Boolean;)V
    .locals 0

    .line 574
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->quickAdminShortcuts:Z

    return-void
.end method

.method public static synthetic $r8$lambda$zZ0QfoiK5uAsG09oU4OvSW3mV7g(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handlePauseOnMinimizeSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetstickerSizeCell(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->stickerSizeCell:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 26

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    .line 140
    const-string/jumbo v24, "tg"

    const-string v25, "ca"

    const-string/jumbo v1, "none"

    const-string v2, "en"

    const-string v3, "es"

    const-string/jumbo v4, "zh"

    const-string v5, "hi"

    const-string v6, "fa"

    const-string v7, "fr"

    const-string/jumbo v8, "ru"

    const-string/jumbo v9, "pt"

    const-string v10, "de"

    const-string/jumbo v11, "ja"

    const-string/jumbo v12, "ko"

    const-string/jumbo v13, "it"

    const-string/jumbo v14, "uk"

    const-string v15, "gu"

    const-string/jumbo v16, "pl"

    const-string/jumbo v17, "nl"

    const-string/jumbo v18, "tr"

    const-string/jumbo v19, "vi"

    const-string v20, "cs"

    const-string/jumbo v21, "uz"

    const-string v22, "eo"

    const-string/jumbo v23, "kk"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->languageCodes:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method private getCameraSettingsSelectedCount(Z)I
    .locals 3

    .line 850
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/camera/CameraXSession;->isSeamlessSwitchingAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-ne v0, v2, :cond_3

    .line 851
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-nez p1, :cond_2

    .line 852
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->roundDualAvailableStatic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 854
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->extendedFramesPerSecond:Z

    if-eqz v1, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :cond_5
    if-nez p1, :cond_6

    .line 855
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->cameraStabilization:Z

    if-eqz v1, :cond_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 856
    :cond_7
    sget v1, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-eq v1, v2, :cond_9

    if-nez p1, :cond_8

    .line 857
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->cameraMirrorMode:Z

    if-eqz p1, :cond_9

    :cond_8
    add-int/2addr v0, v2

    :cond_9
    return v0
.end method

.method private getHideReactionsElementsSelectedCount(Z)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 744
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInChannels:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-nez p1, :cond_2

    .line 745
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInGroups:Z

    if-eqz v2, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-nez p1, :cond_5

    .line 746
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInPrivateChats:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method private getMessageMenuSelectedCount(Z)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 783
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->showCopyPhotoButton:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-nez p1, :cond_2

    .line 784
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->showClearButton:Z

    if-eqz v2, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-nez p1, :cond_4

    .line 785
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->showSaveMessageButton:Z

    if-eqz v2, :cond_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    :cond_5
    if-nez p1, :cond_6

    .line 786
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->showRepeatMessageButton:Z

    if-eqz v2, :cond_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    :cond_7
    if-nez p1, :cond_8

    .line 787
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->showReportButton:Z

    if-eqz v2, :cond_9

    :cond_8
    add-int/lit8 v1, v1, 0x1

    :cond_9
    if-nez p1, :cond_a

    .line 788
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->showHistoryButton:Z

    if-eqz v2, :cond_b

    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 789
    :cond_b
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->canUseAI()Z

    move-result v2

    if-eqz v2, :cond_d

    if-nez p1, :cond_c

    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->showGenerateButton:Z

    if-eqz v2, :cond_d

    :cond_c
    add-int/lit8 v1, v1, 0x1

    :cond_d
    if-nez p1, :cond_f

    .line 790
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->showDetailsButton:Z

    if-eqz p1, :cond_e

    goto :goto_2

    :cond_e
    return v1

    :cond_f
    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method private getPauseOnMinimizeSelectedCount(Z)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 884
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeVideo:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-nez p1, :cond_2

    .line 885
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeVoice:Z

    if-eqz v2, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-nez p1, :cond_5

    .line 886
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeRound:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method private getQuickTransitionsSelectedCount(Z)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 815
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->quickTransitionForChannels:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-nez p1, :cond_3

    .line 816
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->quickTransitionForTopics:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method private getRecognitionLanguageOption(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 977
    invoke-static {p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getLanguageTitleSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 978
    invoke-static {p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getLanguageDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 979
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getReplyElementsSelectedCount(Z)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 736
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->replyColors:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-nez p1, :cond_2

    .line 737
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->replyEmoji:Z

    if-eqz v2, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-nez p1, :cond_5

    .line 738
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->replyBackground:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method private handleCameraSettingsClick(Lorg/telegram/ui/Components/UItem;)V
    .locals 2

    .line 821
    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->cameraSettingsExpanded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->cameraSettingsExpanded:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    .line 822
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleCameraSettingsSwitchClick(Landroid/view/View;)V
    .locals 5

    .line 826
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 827
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget p1, p1, Lorg/telegram/ui/Cells/TextCheckCell2;->id:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findItemByItemId(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 828
    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 830
    sget v2, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v3, 0x2

    const-string/jumbo v4, "rounddual_available"

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/exteragram/messenger/camera/CameraXSession;->isSeamlessSwitchingAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget v2, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-ne v2, v1, :cond_2

    .line 831
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 832
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 834
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 836
    :goto_0
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    .line 837
    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->extendedFramesPerSecond:Z

    const-string v3, "extendedFramesPerSecond"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 838
    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->cameraStabilization:Z

    const-string v3, "cameraStabilization"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 839
    sget v3, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-eq v3, v1, :cond_3

    .line 840
    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->cameraMirrorMode:Z

    const-string v3, "cameraMirrorMode"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 842
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 844
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    .line 845
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleDoubleTapActionButtonClick(Z)V
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapCell:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->updateIcons(IZ)V

    .line 752
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapCell:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    invoke-virtual {p1}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->invalidate()V

    return-void
.end method

.method private handleHideReactionsElementsClick(Lorg/telegram/ui/Components/UItem;)V
    .locals 2

    .line 710
    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->hideReactionsExpanded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->hideReactionsExpanded:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    .line 711
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleHideReactionsSwitchClick(Landroid/view/View;)V
    .locals 4

    .line 715
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 716
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget p1, p1, Lorg/telegram/ui/Cells/TextCheckCell2;->id:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findItemByItemId(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 717
    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 719
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInChannels:Z

    .line 720
    const-string v3, "hideReactionsInChannels"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInGroups:Z

    .line 721
    const-string v3, "hideReactionsInGroups"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInPrivateChats:Z

    .line 722
    const-string v3, "hideReactionsInPrivateChats"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 723
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 725
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    .line 726
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleMessageMenuClick(Lorg/telegram/ui/Components/UItem;)V
    .locals 2

    .line 756
    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->messageMenuExpanded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->messageMenuExpanded:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    .line 757
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleMessageMenuSwitchClick(Landroid/view/View;)V
    .locals 4

    .line 761
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 762
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget p1, p1, Lorg/telegram/ui/Cells/TextCheckCell2;->id:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findItemByItemId(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 763
    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 765
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showCopyPhotoButton:Z

    .line 766
    const-string/jumbo v3, "showCopyPhotoButton"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showClearButton:Z

    .line 767
    const-string/jumbo v3, "showClearButton"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showSaveMessageButton:Z

    .line 768
    const-string/jumbo v3, "showSaveMessageButton"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showRepeatMessageButton:Z

    .line 769
    const-string/jumbo v3, "showRepeatMessageButton"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showReportButton:Z

    .line 770
    const-string/jumbo v3, "showReportButton"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showHistoryButton:Z

    .line 771
    const-string/jumbo v3, "showHistoryButton"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showGenerateButton:Z

    .line 772
    const-string/jumbo v3, "showGenerateButton"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showDetailsButton:Z

    .line 773
    const-string/jumbo v3, "showDetailsButton"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 774
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 776
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    .line 777
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    .line 778
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handlePauseOnMinimizeClick(Lorg/telegram/ui/Components/UItem;)V
    .locals 2

    .line 863
    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->pauseOnMinimizeExpanded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->pauseOnMinimizeExpanded:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    .line 864
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handlePauseOnMinimizeSwitchClick(Landroid/view/View;)V
    .locals 4

    .line 868
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 869
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget p1, p1, Lorg/telegram/ui/Cells/TextCheckCell2;->id:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findItemByItemId(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 870
    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 872
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeVideo:Z

    .line 873
    const-string/jumbo v3, "pauseOnMinimizeVideo"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeVoice:Z

    .line 874
    const-string/jumbo v3, "pauseOnMinimizeVoice"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeRound:Z

    .line 875
    const-string/jumbo v3, "pauseOnMinimizeRound"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 876
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 878
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    .line 879
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleQuickTransitionsClick(Lorg/telegram/ui/Components/UItem;)V
    .locals 2

    .line 795
    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->quickTransitionsExpanded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->quickTransitionsExpanded:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    .line 796
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleQuickTransitionsSwitchClick(Landroid/view/View;)V
    .locals 4

    .line 800
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 801
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget p1, p1, Lorg/telegram/ui/Cells/TextCheckCell2;->id:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findItemByItemId(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 802
    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 804
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->quickTransitionForChannels:Z

    .line 805
    const-string/jumbo v3, "quickTransitionForChannels"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->quickTransitionForTopics:Z

    .line 806
    const-string/jumbo v3, "quickTransitionForTopics"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 807
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 809
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    .line 810
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleReplyElementsClick(Lorg/telegram/ui/Components/UItem;)V
    .locals 2

    .line 688
    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->replyElementsExpanded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->replyElementsExpanded:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    .line 689
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleReplyElementsSwitchClick(Landroid/view/View;)V
    .locals 4

    .line 693
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 694
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget p1, p1, Lorg/telegram/ui/Cells/TextCheckCell2;->id:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findItemByItemId(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 695
    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 697
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->replyColors:Z

    .line 698
    const-string/jumbo v3, "replyColors"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->replyEmoji:Z

    .line 699
    const-string/jumbo v3, "replyEmoji"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->replyBackground:Z

    .line 700
    const-string/jumbo v3, "replyBackground"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 701
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 703
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->stickerSizeCell:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    invoke-virtual {v2}, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->invalidate()V

    .line 704
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    .line 705
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    .line 706
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleSpeechRecognitionLanguageClick(Lorg/telegram/ui/Components/UItem;)V
    .locals 6

    .line 891
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->recognitionLanguageOptions:[Ljava/lang/CharSequence;

    sget v1, Lorg/telegram/messenger/R$string;->RecognitionLanguage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->languageCodes:Ljava/util/List;

    sget-object v3, Lcom/exteragram/messenger/ExteraConfig;->recognitionLanguage:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda61;

    invoke-direct {v5, p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda61;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Lorg/telegram/ui/Components/UItem;)V

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/exteragram/messenger/utils/ui/PopupUtils;->showDialog([Ljava/lang/CharSequence;[ILjava/lang/String;ILandroid/content/Context;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void
.end method

.method private synthetic lambda$createView$1(F)V
    .locals 2

    .line 196
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sput p1, Lcom/exteragram/messenger/ExteraConfig;->stickerSize:F

    const-string/jumbo v1, "stickerSize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    invoke-static {p1, v1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 223
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 224
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sput p1, Lcom/exteragram/messenger/ExteraConfig;->stickerSize:F

    const-string/jumbo v1, "stickerSize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->stickerSizeCell:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    iget-object v0, v0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->seekBar:Lcom/exteragram/messenger/preferences/components/AltSeekbar;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/preferences/components/AltSeekbar;->setProgress(F)V

    .line 226
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->stickerSizeCell:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    invoke-virtual {p1}, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 3

    .line 219
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    const/4 p1, 0x2

    .line 220
    new-array p1, p1, [F

    sget v1, Lcom/exteragram/messenger/ExteraConfig;->stickerSize:F

    aput v1, p1, v0

    const/high16 v0, 0x41400000    # 12.0f

    aput v0, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 221
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 222
    new-instance v0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda62;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda62;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 228
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$handleSpeechRecognitionLanguageClick$55(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;)V
    .locals 2

    .line 897
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sput-object p1, Lcom/exteragram/messenger/ExteraConfig;->recognitionLanguage:Ljava/lang/String;

    const-string/jumbo v1, "recognitionLanguage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 898
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget p2, p2, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findViewByItemId(I)Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Lorg/telegram/ui/Cells/TextCell;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/TextCell;

    .line 899
    invoke-static {p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getLanguageTitleSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    .line 901
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$handleSpeechRecognitionLanguageClick$60(Ljava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 9

    .line 917
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    .line 918
    new-instance v5, Lcom/exteragram/messenger/speech/ui/LoadingModelView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v5, p3}, Lcom/exteragram/messenger/speech/ui/LoadingModelView;-><init>(Landroid/content/Context;)V

    .line 919
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 920
    invoke-virtual {p3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 921
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    const/4 p3, 0x0

    .line 922
    invoke-virtual {v7, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 923
    invoke-virtual {v7, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 p4, 0x1

    .line 925
    new-array v4, p4, [Z

    aput-boolean p3, v4, p3

    .line 926
    new-array v2, p4, [F

    const/4 v0, 0x0

    aput v0, v2, p3

    .line 927
    new-instance v3, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda67;

    invoke-direct {v3, v5, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda67;-><init>(Lcom/exteragram/messenger/speech/ui/LoadingModelView;[F)V

    .line 929
    new-array v6, p4, [J

    const-wide/16 v0, -0x1

    aput-wide v0, v6, p3

    .line 930
    new-instance p3, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda68;

    invoke-direct {p3, v4, v6, v7}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda68;-><init>([Z[JLorg/telegram/ui/ActionBar/AlertDialog;)V

    const-wide/16 v0, 0x96

    invoke-static {p3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 937
    invoke-static {}, Lcom/exteragram/messenger/speech/VoiceRecognitionController;->getInstance()Lcom/exteragram/messenger/speech/VoiceRecognitionController;

    move-result-object p3

    new-instance v0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;[FLjava/lang/Runnable;[ZLcom/exteragram/messenger/speech/ui/LoadingModelView;[JLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)V

    const-string/jumbo p2, "vosk"

    invoke-virtual {p3, p2, p1, v0}, Lcom/exteragram/messenger/speech/VoiceRecognitionController;->downloadModel(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/speech/VoiceRecognitionController$DownloadModelCallback;)V

    return-void
.end method

.method private synthetic lambda$handleSpeechRecognitionLanguageClick$61(Lorg/telegram/ui/Components/UItem;I)V
    .locals 8

    .line 892
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->recognitionLanguage:Ljava/lang/String;

    .line 893
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->languageCodes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 894
    invoke-static {v0, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 896
    :cond_0
    new-instance v0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda63;

    invoke-direct {v0, p0, p2, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda63;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Ljava/lang/String;Lorg/telegram/ui/Components/UItem;)V

    .line 904
    const-string/jumbo p1, "none"

    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/exteragram/messenger/speech/VoiceRecognitionController;->getInstance()Lcom/exteragram/messenger/speech/VoiceRecognitionController;

    move-result-object p1

    const-string/jumbo v1, "vosk"

    invoke-virtual {p1, v1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController;->listDownloadedModels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda64;

    invoke-direct {v2, p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda64;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 905
    invoke-static {}, Lcom/exteragram/messenger/speech/VoiceRecognitionController;->getInstance()Lcom/exteragram/messenger/speech/VoiceRecognitionController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController;->listAvailableModels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 906
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda65;

    invoke-direct {v1, p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda65;-><init>(Ljava/lang/String;)V

    .line 907
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 908
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    const/4 v1, 0x0

    .line 909
    invoke-virtual {p1, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 912
    :cond_1
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 913
    sget v3, Lorg/telegram/messenger/R$string;->MissingLanguageModel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 914
    sget v3, Lorg/telegram/messenger/R$string;->ModelDownloadInfo:I

    invoke-static {p2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getLanguageTitleSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 915
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 916
    sget v1, Lorg/telegram/messenger/R$string;->ModelDownload:I

    invoke-virtual {p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda66;

    invoke-direct {v1, p0, p2, v0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda66;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 969
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 971
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onClick$12(I)V
    .locals 1

    .line 560
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    const-string v0, "doubleTapAction"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 561
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleDoubleTapActionButtonClick(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$13(I)V
    .locals 1

    .line 565
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    const-string v0, "doubleTapActionOutOwner"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 566
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleDoubleTapActionButtonClick(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$14(I)V
    .locals 1

    .line 570
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->bottomButton:I

    const-string v0, "bottomButton"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void
.end method

.method private synthetic lambda$onClick$37(I)V
    .locals 1

    .line 647
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const-string v0, "cameraType"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onClick$42(I)V
    .locals 1

    .line 658
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->videoMessagesCamera:I

    const-string/jumbo v0, "videoMessagesCamera"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onClick$48(I)V
    .locals 1

    .line 670
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->doubleTapSeekDuration:I

    const-string v0, "doubleTapSeekDuration"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    return-void
.end method

.method private updateReplySettings()V
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->stickerSizeCell:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->invalidate()V

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    .line 186
    new-instance v0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    sget-object v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->STICKER_SIZE:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    .line 188
    invoke-virtual {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result v3

    sget v6, Lcom/exteragram/messenger/ExteraConfig;->stickerSize:F

    sget v2, Lorg/telegram/messenger/R$string;->StickerSize:I

    .line 191
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v2, Lorg/telegram/messenger/R$string;->StickerSizeLeft:I

    .line 192
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v2, Lorg/telegram/messenger/R$string;->StickerSizeRight:I

    .line 193
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v4, 0x4

    const/16 v5, 0x14

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;-><init>(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/content/Context;IIIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p1, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    .line 195
    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->setListener(Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell$OnSliderChangedListener;)Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->stickerSizeCell:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    .line 201
    new-instance p1, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$1;

    invoke-direct {p1, p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$1;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->stickerShapeCell:Lcom/exteragram/messenger/preferences/chats/components/StickerShapeCell;

    .line 208
    new-instance p1, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    invoke-direct {p1, v2}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapCell:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    .line 209
    new-instance p1, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x1

    invoke-direct {p1, v2, v0, v1}, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;I)V

    iput-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->messagesPreviewCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    .line 211
    invoke-super {p0, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 214
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 215
    sget v1, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lcom/exteragram/messenger/ExteraConfig;->stickerSize:F

    const/high16 v3, 0x41400000    # 12.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 13

    .line 241
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->STICKER_SIZE:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->stickerSizeCell:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "stickerSize"

    .line 242
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 241
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->HIDE_STICKER_TIME:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->StickerTime:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideStickerTime:Z

    .line 244
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 245
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hideStickerTime"

    .line 246
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 243
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->REPLY_ELEMENTS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getReplyElementsSelectedCount(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getReplyElementsSelectedCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v3, v7, v2

    aput-object v5, v7, v4

    const-string v3, "%d/%d"

    invoke-static {v1, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    invoke-static {p2, v0, v5, v7}, Lorg/telegram/ui/Components/UItem;->asExteraExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 248
    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getReplyElementsSelectedCount(Z)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->replyElementsExpanded:Z

    xor-int/2addr v0, v4

    .line 249
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 250
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "replyElements"

    .line 251
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 247
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-boolean p2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->replyElementsExpanded:Z

    if-eqz p2, :cond_1

    .line 253
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->REPLY_COLORS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->BackgroundColors:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->replyColors:Z

    .line 254
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 255
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 253
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->REPLY_EMOJI:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->Emoji:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->replyEmoji:Z

    .line 257
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 258
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 256
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->REPLY_BACKGROUND:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ReplyBackground:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->replyBackground:Z

    .line 260
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 261
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 259
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget p2, Lorg/telegram/messenger/R$string;->StickerShape:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->STICKER_SHAPE:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->stickerShapeCell:Lcom/exteragram/messenger/preferences/chats/components/StickerShapeCell;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "stickerShape"

    .line 267
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 266
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->AI:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result v7

    sget v8, Lorg/telegram/messenger/R$drawable;->ai_chat:I

    sget p2, Lorg/telegram/messenger/R$string;->AIChat:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget p2, Lorg/telegram/messenger/R$string;->AIChatInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x40

    const/16 v12, 0x3c

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/UItem;->asButtonWithSubtext(IILjava/lang/CharSequence;Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 271
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "aiChat"

    .line 272
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 270
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->CHAT_SETTINGS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    sget p2, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget p2, Lorg/telegram/messenger/R$string;->ChatSettingsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/UItem;->asButtonWithSubtext(IILjava/lang/CharSequence;Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "chatSettings"

    .line 274
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 273
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget p2, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->UNLIMITED_RECENT_STICKERS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->UnlimitedRecentStickers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->unlimitedRecentStickers:Z

    .line 279
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 280
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "unlimitedRecentStickers"

    .line 281
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 278
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->HIDE_REACTIONS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HideReactions:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getHideReactionsElementsSelectedCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getHideReactionsElementsSelectedCount(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v5, v8, v2

    aput-object v7, v8, v4

    invoke-static {v1, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    invoke-static {p2, v0, v5, v7}, Lorg/telegram/ui/Components/UItem;->asExteraExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 283
    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getHideReactionsElementsSelectedCount(Z)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->hideReactionsExpanded:Z

    xor-int/2addr v0, v4

    .line 284
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 285
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hideReactions"

    .line 286
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 282
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-boolean p2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->hideReactionsExpanded:Z

    if-eqz p2, :cond_3

    .line 288
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->CHANNELS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ChannelsTab:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInChannels:Z

    .line 289
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 290
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 288
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->GROUPS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->SaveToGalleryGroups:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInGroups:Z

    .line 292
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 293
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 291
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->PRIVATE_CHATS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PrivateChats:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInPrivateChats:Z

    .line 295
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 296
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 294
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->HideReactionsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget p2, Lorg/telegram/messenger/R$string;->DoubleTap:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->DOUBLE_TAP:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapCell:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->DOUBLE_TAP_ACTION:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->DoubleTapIncoming:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapActions:[Ljava/lang/CharSequence;

    sget v7, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    aget-object v5, v5, v7

    invoke-static {p2, v0, v5}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 303
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "doubleTapIncoming"

    .line 304
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 302
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->DOUBLE_TAP_ACTION_OUT_OWNER:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->DoubleTapOutgoing:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapOutActions:[Ljava/lang/CharSequence;

    sget v7, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    aget-object v5, v5, v7

    invoke-static {p2, v0, v5}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 306
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "doubleTapOutgoing"

    .line 307
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 305
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget p2, Lorg/telegram/messenger/R$string;->DoubleTapInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget p2, Lorg/telegram/messenger/R$string;->MainTabsChats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->BOTTOM_BUTTON:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->BottomButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->bottomButton:[Ljava/lang/CharSequence;

    sget v7, Lcom/exteragram/messenger/ExteraConfig;->bottomButton:I

    aget-object v5, v5, v7

    invoke-static {p2, v0, v5}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 312
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "bottomButton"

    .line 313
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 311
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->ADMIN_SHORTCUTS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->AdminShortcuts:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->quickAdminShortcuts:Z

    .line 315
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 316
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "adminShortcuts"

    .line 317
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 314
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->QUICK_TRANSITIONS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->QuickTransitions:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getQuickTransitionsSelectedCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getQuickTransitionsSelectedCount(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v5, v8, v2

    aput-object v7, v8, v4

    invoke-static {v1, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    invoke-static {p2, v0, v5, v7}, Lorg/telegram/ui/Components/UItem;->asExteraExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 319
    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getQuickTransitionsSelectedCount(Z)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->quickTransitionsExpanded:Z

    xor-int/2addr v0, v4

    .line 320
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 321
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "quickTransitions"

    .line 322
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 318
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-boolean p2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->quickTransitionsExpanded:Z

    if-eqz p2, :cond_5

    .line 324
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->QUICK_TRANSITION_FOR_CHANNELS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->FilterChannels:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->quickTransitionForChannels:Z

    .line 325
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 326
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 324
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->QUICK_TRANSITION_FOR_TOPICS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->Topics:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->quickTransitionForTopics:Z

    .line 328
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 329
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 327
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_5
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->DISABLE_GREETING_STICKER:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->DisableGreetingSticker:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->disableGreetingSticker:Z

    .line 332
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 333
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "disableGreetingSticker"

    .line 334
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 331
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->HIDE_KEYBOARD_ON_SCROLL:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HideKeyboardOnScroll:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideKeyboardOnScroll:Z

    .line 336
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 337
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hideKeyboardOnScroll"

    .line 338
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 335
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->ADD_COMMA_AFTER_MENTION:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->AddCommaAfterMention:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->addCommaAfterMention:Z

    .line 340
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 341
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "addCommaAfterMention"

    .line 342
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 339
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->HIDE_SEND_AS_PEER:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HideSendAsPeer:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideSendAsPeer:Z

    .line 344
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 345
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hideSendAsPeer"

    .line 346
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 343
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget p2, Lorg/telegram/messenger/R$string;->HideSendAsPeerInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget p2, Lorg/telegram/messenger/R$string;->MessagesChartTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->MESSAGES_PREVIEW:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->messagesPreviewCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->REMOVE_MESSAGE_TAIL:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->RemoveMessageTail:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->removeMessageTail:Z

    .line 352
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 353
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "removeMessageTail"

    .line 354
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 351
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->REPLACE_EDITED_WITH_ICON:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ReplaceEditedWithIcon:I

    sget v5, Lorg/telegram/messenger/R$string;->EditedMessage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->replaceEditedWithIcon:Z

    .line 356
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 357
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "replaceEditedWithIcon"

    .line 358
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 355
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->SHOW_ONLINE_STATUS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ShowOnlineStatus:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showOnlineStatus:Z

    .line 360
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 361
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "showOnlineStatus"

    .line 362
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 359
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->HIDE_SHARE_BUTTON:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HideShareButton:I

    sget v5, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideShareButton:Z

    .line 364
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 365
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hideShareButton"

    .line 366
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 363
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->SHOW_RESULTS_BEFORE_VOTING:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ShowPollResultsBeforeVoting:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$string;->ShowPollResultsBeforeVotingHint:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v0, v5, v4}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showResultsBeforeVoting:Z

    .line 368
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 369
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "showResultsBeforeVoting"

    .line 370
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 367
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->MESSAGE_MENU:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->MessageMenu:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getMessageMenuSelectedCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getMessageMenuSelectedCount(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v5, v8, v2

    aput-object v7, v8, v4

    invoke-static {v1, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    invoke-static {p2, v0, v5, v7}, Lorg/telegram/ui/Components/UItem;->asExteraExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 372
    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getMessageMenuSelectedCount(Z)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->messageMenuExpanded:Z

    xor-int/2addr v0, v4

    .line 373
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 374
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "messageMenu"

    .line 375
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 371
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-boolean p2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->messageMenuExpanded:Z

    if-eqz p2, :cond_9

    .line 377
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->COPY_PHOTO:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->CopyPhoto:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showCopyPhotoButton:Z

    .line 378
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 379
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 377
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->SAVE:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->Save:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showSaveMessageButton:Z

    .line 381
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 382
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 380
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->REPEAT:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    const-string v0, "Chats-MessageMenu-Repeat"

    invoke-static {v0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->markAsNewFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lorg/telegram/messenger/R$string;->Repeat:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    :cond_7
    sget v0, Lorg/telegram/messenger/R$string;->Repeat:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showRepeatMessageButton:Z

    .line 384
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 385
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 383
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->CLEAR:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showClearButton:Z

    .line 387
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 388
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 386
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->HISTORY:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->MessageHistory:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showHistoryButton:Z

    .line 390
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 391
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 389
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->REPORT:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ReportChat:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showReportButton:Z

    .line 393
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 394
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 392
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->canUseAI()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 396
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->GENERATE:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->Generate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showGenerateButton:Z

    .line 397
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 398
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 396
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_8
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->DETAILS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->Details:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->showDetailsButton:Z

    .line 400
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 401
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 399
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_9
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->GROUP_MESSAGE_MENU:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->GroupMessageMenu:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->groupMessageMenu:Z

    .line 404
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 405
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "groupMessageMenu"

    .line 406
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 403
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    sget p2, Lorg/telegram/messenger/R$string;->GroupMessageMenuInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    sget p2, Lorg/telegram/messenger/R$string;->PremiumPreviewVoiceToText:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->SPEECH_RECOGNITION_LANGUAGE:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->RecognitionLanguage:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/exteragram/messenger/ExteraConfig;->recognitionLanguage:Ljava/lang/String;

    invoke-static {v5}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getLanguageTitleSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v0, v5}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 411
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "recognitionLanguage"

    .line 412
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 410
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->canUseAI()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 414
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->POST_PROCESSING_WITH_AI:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PostProcessingWithAi:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$string;->PostProcessingWithAiInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v0, v5, v4}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->postprocessingWithAi:Z

    .line 415
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 416
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "postprocessingWithAi"

    .line 417
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 414
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_a
    sget p2, Lorg/telegram/messenger/R$string;->RecognitionInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget p2, Lorg/telegram/messenger/R$string;->VoipCamera:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->CAMERA_TYPE:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->CameraType:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->cameraType:[Ljava/lang/CharSequence;

    sget v7, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    aget-object v5, v5, v7

    invoke-static {p2, v0, v5}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 422
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "cameraType"

    .line 423
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 421
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget p2, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-eqz p2, :cond_12

    if-ne p2, v6, :cond_b

    .line 425
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/exteragram/messenger/camera/CameraXSession;->isSeamlessSwitchingAvailable(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_c

    :cond_b
    sget p2, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-ne p2, v4, :cond_d

    .line 426
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_c
    move p2, v4

    goto :goto_5

    :cond_d
    move p2, v2

    .line 427
    :goto_5
    sget-object v0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->CAMERA_SETTINGS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result v0

    sget v5, Lorg/telegram/messenger/R$string;->ExtendedSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getCameraSettingsSelectedCount(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getCameraSettingsSelectedCount(Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v8, v9, v4

    invoke-static {v1, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    invoke-static {v0, v5, v7, v8}, Lorg/telegram/ui/Components/UItem;->asExteraExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 428
    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getCameraSettingsSelectedCount(Z)I

    move-result v5

    if-lez v5, :cond_e

    move v5, v4

    goto :goto_6

    :cond_e
    move v5, v2

    :goto_6
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-boolean v5, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->cameraSettingsExpanded:Z

    xor-int/2addr v5, v4

    .line 429
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 430
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const-string v5, "cameraSettings"

    .line 431
    invoke-virtual {v0, v5, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 427
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->cameraSettingsExpanded:Z

    if-eqz v0, :cond_11

    if-eqz p2, :cond_10

    .line 434
    sget-object v0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->DUAL_CAMERA:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result v0

    const-string v5, "Camera-ExtendedSettings-SeamlessSwitching"

    invoke-static {v5}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->markAsNewFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    sget v5, Lorg/telegram/messenger/R$string;->SeamlessSwitching:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_7

    :cond_f
    sget v5, Lorg/telegram/messenger/R$string;->SeamlessSwitching:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_7
    invoke-static {v0, v5}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 435
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->roundDualAvailableStatic(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 434
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_10
    sget-object v0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->EXTENDED_FRAMES_PER_SECOND:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result v0

    sget v5, Lorg/telegram/messenger/R$string;->ExtendedFramesPerSecond:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    sget-boolean v5, Lcom/exteragram/messenger/ExteraConfig;->extendedFramesPerSecond:Z

    .line 439
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 438
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->CAMERA_STABILIZATION:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result v0

    sget v5, Lorg/telegram/messenger/R$string;->CameraStabilization:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    sget-boolean v5, Lcom/exteragram/messenger/ExteraConfig;->cameraStabilization:Z

    .line 442
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 441
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-eq v0, v4, :cond_11

    .line 445
    sget-object v0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->CAMERA_MIRROR_MODE:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result v0

    sget v5, Lorg/telegram/messenger/R$string;->CameraMirrorMode:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    sget-boolean v5, Lcom/exteragram/messenger/ExteraConfig;->cameraMirrorMode:Z

    .line 446
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 445
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    if-nez p2, :cond_12

    .line 451
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string/jumbo v0, "rounddual_available"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 454
    :cond_12
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->VIDEO_MESSAGES_CAMERA:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->VideoMessagesCamera:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->videoMessagesCamera:[Ljava/lang/CharSequence;

    sget v7, Lcom/exteragram/messenger/ExteraConfig;->videoMessagesCamera:I

    aget-object v5, v5, v7

    invoke-static {p2, v0, v5}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 455
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "videoMessagesCamera"

    .line 456
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 454
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    sget p2, Lcom/exteragram/messenger/ExteraConfig;->videoMessagesCamera:I

    if-eq p2, v6, :cond_13

    .line 458
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->REMEMBER_LAST_USED_CAMERA:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->RememberLastUsedCamera:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$string;->RememberLastUsedCameraInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v0, v5, v4}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->rememberLastUsedCamera:Z

    .line 459
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 460
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "rememberLastUsedCamera"

    .line 461
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 458
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_13
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->STATIC_ZOOM:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->StaticZoom:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->staticZoom:Z

    .line 463
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 464
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "staticZoom"

    .line 465
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 462
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    sget p2, Lorg/telegram/messenger/R$string;->StaticZoomInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget p2, Lorg/telegram/messenger/R$string;->AutoDownloadPhotos:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->ALWAYS_SEND_IN_HD:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->AlwaysSendInHD:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->alwaysSendInHD:Z

    .line 470
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 471
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "alwaysSendInHD"

    .line 472
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 469
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->HIDE_COUNTER:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HidePhotoCounter:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hidePhotoCounter:Z

    .line 474
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 475
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hidePhotoCounter"

    .line 476
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 473
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->HIDE_CAMERA_TILE:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HideCameraTile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    .line 478
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 479
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hideCameraTile"

    .line 480
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 477
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    sget p2, Lorg/telegram/messenger/R$string;->HideCameraTileInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    sget p2, Lorg/telegram/messenger/R$string;->AutoDownloadVideos:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->DOUBLE_TAP_SEEK_DURATION:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->DoubleTapSeekDuration:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapSeekDuration:[Ljava/lang/CharSequence;

    sget v7, Lcom/exteragram/messenger/ExteraConfig;->doubleTapSeekDuration:I

    aget-object v5, v5, v7

    invoke-static {p2, v0, v5}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 485
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "doubleTapSeekDuration"

    .line 486
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 484
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->PREFER_ORIGINAL_QUALITY:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PreferOriginalQuality:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->preferOriginalQuality:Z

    .line 488
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 489
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "preferOriginalQuality"

    .line 490
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 487
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->SWIPE_TO_PIP:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->SwipeToPip:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->swipeToPip:Z

    .line 492
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 493
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "swipeToPip"

    .line 494
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 491
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->UNMUTE_WITH_VOLUME_BUTTONS:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->UnmuteWithVolumeButtons:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$string;->UnmuteWithVolumeButtonsInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v0, v5, v4}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->unmuteWithVolumeButtons:Z

    .line 496
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 497
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "unmuteWithVolumeButtons"

    .line 498
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 495
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->PAUSE_ON_MINIMIZE:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PauseOnMinimize:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getPauseOnMinimizeSelectedCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getPauseOnMinimizeSelectedCount(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v7, v6, v4

    invoke-static {v1, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    invoke-static {p2, v0, v1, v3}, Lorg/telegram/ui/Components/UItem;->asExteraExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 500
    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->getPauseOnMinimizeSelectedCount(Z)I

    move-result v0

    if-lez v0, :cond_14

    move v2, v4

    :cond_14
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->pauseOnMinimizeExpanded:Z

    xor-int/2addr v0, v4

    .line 501
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 502
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "pauseOnMinimize"

    .line 503
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 499
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    iget-boolean p2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->pauseOnMinimizeExpanded:Z

    if-eqz p2, :cond_15

    .line 505
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->PAUSE_ON_MINIMIZE_VIDEO:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PauseOnMinimizeVideo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeVideo:Z

    .line 506
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 507
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 505
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->PAUSE_ON_MINIMIZE_VOICE:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PauseOnMinimizeVoice:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeVoice:Z

    .line 509
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 510
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 508
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object p2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->PAUSE_ON_MINIMIZE_ROUND:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PauseOnMinimizeRound:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeRound:Z

    .line 512
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 513
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 511
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_15
    sget p2, Lorg/telegram/messenger/R$string;->PauseOnMinimizeInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 236
    sget v0, Lorg/telegram/messenger/R$string;->SearchAllChatsShort:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeOptionStrings()V
    .locals 10

    const/4 v0, 0x0

    .line 156
    invoke-static {v0}, Lcom/exteragram/messenger/utils/chats/DoubleTapUtils;->getDoubleTapActions(Z)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapActions:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    .line 157
    invoke-static {v1}, Lcom/exteragram/messenger/utils/chats/DoubleTapUtils;->getDoubleTapActions(Z)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapOutActions:[Ljava/lang/CharSequence;

    .line 158
    sget v2, Lorg/telegram/messenger/R$string;->Hide:I

    .line 159
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMute:I

    .line 160
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->ChannelDiscuss:I

    .line 161
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/CharSequence;

    aput-object v2, v6, v0

    aput-object v3, v6, v1

    const/4 v2, 0x2

    aput-object v4, v6, v2

    iput-object v6, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->bottomButton:[Ljava/lang/CharSequence;

    .line 163
    sget v3, Lorg/telegram/messenger/R$string;->VideoMessagesCameraFront:I

    .line 164
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->VideoMessagesCameraRear:I

    .line 165
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$string;->VideoMessagesCameraAsk:I

    .line 166
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/CharSequence;

    aput-object v3, v7, v0

    aput-object v4, v7, v1

    aput-object v6, v7, v2

    iput-object v7, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->videoMessagesCamera:[Ljava/lang/CharSequence;

    const/4 v3, 0x5

    .line 168
    new-array v4, v0, [Ljava/lang/Object;

    .line 169
    const-string v6, "Seconds"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    new-array v7, v0, [Ljava/lang/Object;

    .line 170
    invoke-static {v6, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    new-array v8, v0, [Ljava/lang/Object;

    .line 171
    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1e

    new-array v9, v0, [Ljava/lang/Object;

    .line 172
    invoke-static {v6, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/CharSequence;

    aput-object v3, v8, v0

    aput-object v4, v8, v1

    aput-object v7, v8, v2

    aput-object v6, v8, v5

    iput-object v8, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapSeekDuration:[Ljava/lang/CharSequence;

    .line 174
    new-array v3, v5, [Ljava/lang/CharSequence;

    const-string v4, "Camera 1"

    aput-object v4, v3, v0

    const-string v0, "Camera 2"

    aput-object v0, v3, v1

    const-string v0, "Camera X"

    aput-object v0, v3, v2

    iput-object v3, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->cameraType:[Ljava/lang/CharSequence;

    .line 179
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->languageCodes:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda59;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    .line 180
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda60;

    invoke-direct {v1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda60;-><init>()V

    .line 181
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->recognitionLanguageOptions:[Ljava/lang/CharSequence;

    return-void
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 7

    .line 520
    iget v2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-lez v2, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->values()[Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    move-result-object v3

    array-length v3, v3

    if-le v2, v3, :cond_0

    goto/16 :goto_0

    .line 521
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;->values()[Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;

    move-result-object v2

    iget v3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 522
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 683
    :pswitch_1
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda53;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda53;-><init>()V

    const-string/jumbo v3, "pauseOnMinimizeRound"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 681
    :pswitch_2
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda51;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda51;-><init>()V

    const-string/jumbo v3, "pauseOnMinimizeVoice"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 679
    :pswitch_3
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda50;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda50;-><init>()V

    const-string/jumbo v3, "pauseOnMinimizeVideo"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 677
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handlePauseOnMinimizeClick(Lorg/telegram/ui/Components/UItem;)V

    return-void

    .line 676
    :pswitch_5
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda49;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda49;-><init>()V

    const-string/jumbo v3, "unmuteWithVolumeButtons"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 674
    :pswitch_6
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda48;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda48;-><init>()V

    const-string/jumbo v3, "swipeToPip"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 672
    :pswitch_7
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda47;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda47;-><init>()V

    const-string/jumbo v3, "preferOriginalQuality"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 670
    :pswitch_8
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapSeekDuration:[Ljava/lang/CharSequence;

    sget v3, Lorg/telegram/messenger/R$string;->DoubleTapSeekDuration:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/exteragram/messenger/ExteraConfig;->doubleTapSeekDuration:I

    new-instance v5, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda46;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda46;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 668
    :pswitch_9
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda45;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda45;-><init>()V

    const-string v3, "hideCameraTile"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 666
    :pswitch_a
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda44;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda44;-><init>()V

    const-string v3, "hidePhotoCounter"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 664
    :pswitch_b
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda43;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda43;-><init>()V

    const-string v3, "alwaysSendInHD"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 662
    :pswitch_c
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda42;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda42;-><init>()V

    const-string/jumbo v3, "staticZoom"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 660
    :pswitch_d
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda40;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda40;-><init>()V

    const-string/jumbo v3, "rememberLastUsedCamera"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 658
    :pswitch_e
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->videoMessagesCamera:[Ljava/lang/CharSequence;

    sget v3, Lorg/telegram/messenger/R$string;->VideoMessagesCamera:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/exteragram/messenger/ExteraConfig;->videoMessagesCamera:I

    new-instance v5, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda39;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda39;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 656
    :pswitch_f
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda38;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda38;-><init>()V

    const-string v3, "cameraMirrorMode"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 654
    :pswitch_10
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda37;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda37;-><init>()V

    const-string v3, "cameraStabilization"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 652
    :pswitch_11
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda36;-><init>()V

    const-string v3, "extendedFramesPerSecond"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 650
    :pswitch_12
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda35;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda35;-><init>()V

    const-string/jumbo v3, "rounddual_available"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 648
    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleCameraSettingsClick(Lorg/telegram/ui/Components/UItem;)V

    return-void

    .line 647
    :pswitch_14
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->cameraType:[Ljava/lang/CharSequence;

    sget v3, Lorg/telegram/messenger/R$string;->CameraType:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    new-instance v5, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda34;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda34;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 645
    :pswitch_15
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda33;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda33;-><init>()V

    const-string/jumbo v3, "postprocessingWithAi"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 643
    :pswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleSpeechRecognitionLanguageClick(Lorg/telegram/ui/Components/UItem;)V

    return-void

    .line 555
    :pswitch_17
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda56;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda56;-><init>()V

    const-string v3, "hideReactionsInPrivateChats"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 556
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->updateReplySettings()V

    return-void

    .line 547
    :pswitch_18
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda54;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda54;-><init>()V

    const-string v3, "hideReactionsInChannels"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 548
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->updateReplySettings()V

    return-void

    .line 551
    :pswitch_19
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda55;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda55;-><init>()V

    const-string v3, "hideReactionsInGroups"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 552
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->updateReplySettings()V

    return-void

    .line 642
    :pswitch_1a
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda32;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda32;-><init>()V

    const-string v3, "groupMessageMenu"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 638
    :pswitch_1b
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda31;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda31;-><init>()V

    const-string/jumbo v4, "showDetailsButton"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 639
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 634
    :pswitch_1c
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda29;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda29;-><init>()V

    const-string/jumbo v4, "showGenerateButton"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 635
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 630
    :pswitch_1d
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda28;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda28;-><init>()V

    const-string/jumbo v4, "showReportButton"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 631
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 626
    :pswitch_1e
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda27;-><init>()V

    const-string/jumbo v4, "showHistoryButton"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 627
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 622
    :pswitch_1f
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda26;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda26;-><init>()V

    const-string/jumbo v4, "showClearButton"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 623
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 618
    :pswitch_20
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda25;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda25;-><init>()V

    const-string/jumbo v4, "showRepeatMessageButton"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 619
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 614
    :pswitch_21
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda24;-><init>()V

    const-string/jumbo v4, "showSaveMessageButton"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 615
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 610
    :pswitch_22
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda23;-><init>()V

    const-string/jumbo v4, "showCopyPhotoButton"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 611
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 608
    :pswitch_23
    invoke-direct/range {p0 .. p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleMessageMenuClick(Lorg/telegram/ui/Components/UItem;)V

    return-void

    .line 603
    :pswitch_24
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda21;-><init>()V

    const-string/jumbo v4, "showResultsBeforeVoting"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 604
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 607
    :pswitch_25
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda22;-><init>()V

    const-string v3, "hideShareButton"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 593
    :pswitch_26
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda18;-><init>()V

    const-string/jumbo v3, "showOnlineStatus"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 594
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->messagesPreviewCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    invoke-virtual {v1}, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;->invalidate()V

    return-void

    .line 589
    :pswitch_27
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda17;-><init>()V

    const-string/jumbo v3, "replaceEditedWithIcon"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 590
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->messagesPreviewCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    invoke-virtual {v1}, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;->invalidate()V

    return-void

    .line 597
    :pswitch_28
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda20;-><init>()V

    const-string/jumbo v4, "removeMessageTail"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    const/4 v1, 0x0

    .line 598
    sput-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 599
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 600
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->messagesPreviewCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    invoke-virtual {v1}, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;->invalidate()V

    return-void

    .line 587
    :pswitch_29
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda16;-><init>()V

    const-string v3, "hideSendAsPeer"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 585
    :pswitch_2a
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda15;-><init>()V

    const-string v3, "addCommaAfterMention"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 583
    :pswitch_2b
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda14;-><init>()V

    const-string v3, "hideKeyboardOnScroll"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 581
    :pswitch_2c
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda13;-><init>()V

    const-string v3, "disableGreetingSticker"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 579
    :pswitch_2d
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda12;-><init>()V

    const-string/jumbo v3, "quickTransitionForTopics"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 577
    :pswitch_2e
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda11;-><init>()V

    const-string/jumbo v3, "quickTransitionForChannels"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 575
    :pswitch_2f
    invoke-direct/range {p0 .. p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleQuickTransitionsClick(Lorg/telegram/ui/Components/UItem;)V

    return-void

    .line 574
    :pswitch_30
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda10;-><init>()V

    const-string/jumbo v3, "quickAdminShortcuts"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 569
    :pswitch_31
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->bottomButton:[Ljava/lang/CharSequence;

    sget v3, Lorg/telegram/messenger/R$string;->BottomButton:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/exteragram/messenger/ExteraConfig;->bottomButton:I

    new-instance v5, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda9;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 564
    :pswitch_32
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapOutActions:[Ljava/lang/CharSequence;

    invoke-static {v4}, Lcom/exteragram/messenger/utils/chats/DoubleTapUtils;->getDoubleTapIcons(Z)[I

    move-result-object v3

    sget v1, Lorg/telegram/messenger/R$string;->DoubleTapOutgoing:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    new-instance v6, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda58;

    invoke-direct {v6, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda58;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;[ILjava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 559
    :pswitch_33
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->doubleTapActions:[Ljava/lang/CharSequence;

    invoke-static {v3}, Lcom/exteragram/messenger/utils/chats/DoubleTapUtils;->getDoubleTapIcons(Z)[I

    move-result-object v3

    sget v1, Lorg/telegram/messenger/R$string;->DoubleTapIncoming:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    new-instance v6, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda57;

    invoke-direct {v6, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda57;-><init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;[ILjava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 545
    :pswitch_34
    invoke-direct/range {p0 .. p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleHideReactionsElementsClick(Lorg/telegram/ui/Components/UItem;)V

    return-void

    .line 544
    :pswitch_35
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda52;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda52;-><init>()V

    const-string/jumbo v3, "unlimitedRecentStickers"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 542
    :pswitch_36
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v1, v3}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 540
    :pswitch_37
    new-instance v1, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity;

    invoke-direct {v1}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity;-><init>()V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 537
    :pswitch_38
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda41;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda41;-><init>()V

    const-string/jumbo v3, "replyBackground"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 538
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->updateReplySettings()V

    return-void

    .line 533
    :pswitch_39
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda30;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda30;-><init>()V

    const-string/jumbo v3, "replyEmoji"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 534
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->updateReplySettings()V

    return-void

    .line 529
    :pswitch_3a
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda19;-><init>()V

    const-string/jumbo v3, "replyColors"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 530
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->updateReplySettings()V

    return-void

    .line 527
    :pswitch_3b
    invoke-direct/range {p0 .. p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->handleReplyElementsClick(Lorg/telegram/ui/Components/UItem;)V

    return-void

    .line 524
    :pswitch_3c
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda8;-><init>()V

    const-string v3, "hideStickerTime"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 525
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->stickerSizeCell:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    invoke-virtual {v1}, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->invalidate()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_0
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
