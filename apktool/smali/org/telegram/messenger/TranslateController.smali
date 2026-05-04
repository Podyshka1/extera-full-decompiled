.class public Lorg/telegram/messenger/TranslateController;
.super Lorg/telegram/messenger/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/TranslateController$Language;,
        Lorg/telegram/messenger/TranslateController$PollText;,
        Lorg/telegram/messenger/TranslateController$TranslatableDecision;,
        Lorg/telegram/messenger/TranslateController$PendingTranslation;,
        Lorg/telegram/messenger/TranslateController$PendingPollTranslation;,
        Lorg/telegram/messenger/TranslateController$StoryKey;,
        Lorg/telegram/messenger/TranslateController$MessageKey;
    }
.end annotation


# static fields
.field private static final GROUPING_TRANSLATIONS_TIMEOUT:I = 0x50

.field private static final MAX_MESSAGES_PER_REQUEST:I = 0x14

.field private static final MAX_SYMBOLS_PER_REQUEST:I = 0x61a8

.field private static final REQUIRED_MIN_MESSAGES_TRANSLATABLE_AUTOTRANSLATE:F = 2.0f

.field private static final REQUIRED_MIN_PERCENTAGE_MESSAGES_UNKNOWN:F = 0.65f

.field private static final REQUIRED_MIN_PERCENTAGE_MESSAGES_UNKNOWN_AUTOTRANSLATE:F = 0.8f

.field private static final REQUIRED_PERCENTAGE_MESSAGES_TRANSLATABLE:F = 0.6f

.field private static final REQUIRED_TOTAL_MESSAGES_CHECKED:I = 0x6

.field private static final REQUIRED_TOTAL_MESSAGES_CHECKED_AUTOTRANSLATE:I = 0x2

.field public static final UNKNOWN_LANGUAGE:Ljava/lang/String; = "und"

.field private static final allLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final languagesOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static suggestedLanguageCodes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chatTranslateEnabled:Ljava/lang/Boolean;

.field private contextTranslateEnabled:Ljava/lang/Boolean;

.field private final detectedDialogLanguage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final detectingPhotos:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/telegram/messenger/TranslateController$MessageKey;",
            ">;"
        }
    .end annotation
.end field

.field private final detectingStories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/telegram/messenger/TranslateController$StoryKey;",
            ">;"
        }
    .end annotation
.end field

.field private final hideTranslateDialogs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final keptReplyMessageObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loadingSummarizations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final loadingTranscriptionTranslations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final loadingTranslations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private messagesController:Lorg/telegram/messenger/MessagesController;

.field private pendingLanguageChecks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingPollTranslations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/TranslateController$PendingPollTranslation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pendingTranscriptionsTranslations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/TranslateController$PendingTranslation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pendingTranslations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/TranslateController$PendingTranslation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final translatableDialogMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/TranslateController$TranslatableDecision;",
            ">;"
        }
    .end annotation
.end field

.field private final translatableDialogs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final translateDialogLanguage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final translatingDialogs:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final translatingPhotos:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/telegram/messenger/TranslateController$MessageKey;",
            ">;"
        }
    .end annotation
.end field

.field private final translatingStories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/telegram/messenger/TranslateController$StoryKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0T95WwvBE362yFdO5Q1D90R1708(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/TranslateController;->lambda$detectStoryLanguage$30(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1lmRju6zzL3KOGJpsbiOjGDJCTg(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TranslateController;->lambda$detectPhotoLanguage$40(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2h-bmSTZhQnm8tQnlz2VHWIis0A(Lorg/telegram/messenger/TranslateController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/TranslateController;->loadTranslatingDialogsCached()V

    return-void
.end method

.method public static synthetic $r8$lambda$35PEH62qLSc09oEau0v-ONskL6k(Landroid/icu/text/Collator;Lorg/telegram/messenger/TranslateController$Language;Lorg/telegram/messenger/TranslateController$Language;)I
    .locals 0

    .line 429
    iget-object p1, p1, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4p1ChiI8L2a43lo7fNAv2CPIcps(Lorg/telegram/messenger/TranslateController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->lambda$checkDialogMessageSure$11(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5T1iBOTSx18KZkE4qhQyPkK9Y50(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;ZJLjava/lang/Boolean;Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/TranslateController;->lambda$checkTranslation$9(Lorg/telegram/messenger/MessageObject;ZJLjava/lang/Boolean;Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BbHabPcDj1D2LYnkuNaDqNcnsF4(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TranslateController;->lambda$translateStory$35(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cp4t8WA1mRSgjGnxVUenKLZSVsE(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingTranslation;ZJLjava/util/Set;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/TranslateController;->lambda$pushToTranslate$24(Lorg/telegram/messenger/TranslateController$PendingTranslation;ZJLjava/util/Set;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EjXH0SaQjZuTz5HTi8mIiIomXeM(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;JILjava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TranslateController;->lambda$checkLanguage$16(Lorg/telegram/messenger/MessageObject;JILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FHr2en8FSNmAuc0Pa2eBUBwE7P4(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TranslateController;->lambda$translateStory$33(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I1ZYF6DcBAYUD-_g0b0SkyUIzBo(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;)I
    .locals 2

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, p0, :cond_1

    goto :goto_0

    .line 565
    :cond_1
    sget-object p0, Lorg/telegram/messenger/TranslateController;->languagesOrder:Ljava/util/List;

    iget-object v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 566
    iget-object v1, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz v0, :cond_2

    if-ltz p0, :cond_2

    sub-int/2addr v0, p0

    return v0

    :cond_2
    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    if-ltz p0, :cond_4

    goto :goto_0

    .line 574
    :cond_4
    iget p0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    iget v0, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    if-ne p0, v0, :cond_5

    .line 575
    iget-object p0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iget-object p1, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    if-le p0, v0, :cond_6

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_6
    if-ge p0, v0, :cond_7

    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$IvJPPKa_kS5C8-6_qnwBmgFR2PM(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TranslateController;->lambda$detectPhotoLanguage$37(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KxlwC4Noqs9P-uo2h7r0AprKTnM(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->lambda$detectStoryLanguage$31(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ll_VWxxo8jx3r6b5udBDJhuY_ds(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;JI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TranslateController;->lambda$checkLanguage$13(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$M0i7s5Cut4Nxm2v9fGO607Ii_Rw(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;JI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TranslateController;->lambda$checkLanguage$15(Lorg/telegram/messenger/MessageObject;JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$MQ6RBDI7Rh_sKEb1JW6Pop0Ye50(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/TranslateController;->lambda$invalidateTranslation$10(Lorg/telegram/messenger/MessageObject;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$MQZ06fWm4H8wauZi8YpP5rWSf7k(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TranslateController;->lambda$detectPhotoLanguage$38(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MkZVnDiE8_9SQPJKLXgWgnBS5GY(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TranslateController;->lambda$checkTranslation$7(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SdXzSrxaAFgjzlt075p-gQMS1gI(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/TranslateController;->lambda$translatePhoto$42(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$StdD1JTac9Z03XaPiVXW1qXbsqs(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;JI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TranslateController;->lambda$checkLanguage$17(Lorg/telegram/messenger/MessageObject;JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$SyHKA8PE2tsRu2MTEtBrj4Sx0_c(Lorg/telegram/messenger/TranslateController;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->lambda$checkDialogTranslatable$18(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$TJB5NFQIrD-fmQDmUMxsRQ8AwF0(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/TranslateController;->lambda$translatePhoto$41(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vg-Ek51b4-In7pxaOcnmN-nUXb8(Lorg/telegram/messenger/TranslateController;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TranslateController;->lambda$pushToSummarize$20(ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W94_3YIL8e7KIa6Lk9iIEDGoP_w(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingPollTranslation;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TranslateController;->lambda$pushPollToTranslate$26(Lorg/telegram/messenger/TranslateController$PendingPollTranslation;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wxxm1InjDhLYJ2eNpXdZvQZYkmE(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TranslateController;->lambda$checkTranslation$6(Lorg/telegram/messenger/MessageObject;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XEJ6N0IhxQnS506EBf29pPsT6Ik(Lorg/telegram/messenger/TranslateController;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->lambda$checkDialogMessageSure$12(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z6oztiOGBfTdoy__HKClmNxW9zo(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/Utilities$Callback4;ZILjava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/TranslateController;->lambda$pushToTranslate$21(Lorg/telegram/messenger/Utilities$Callback4;ZILjava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ze2hMnALVLX9ve-p-rYhKWo2aoI(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/TranslateController;->lambda$translatePhoto$43(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$aMktDKSY18T17a9h6iEI2J6WOAA(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/TranslateController;->lambda$detectStoryLanguage$32(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cpcLZCcdZ8erwd03UfFi2jto8i8(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;JILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TranslateController;->lambda$checkLanguage$14(Lorg/telegram/messenger/MessageObject;JILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dmqV-YK6zrovMmPRAIxM_nFcYzQ(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/TranslateController;->lambda$translateStory$34(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iY4iMdTwDJJwMNzbAYswXa9TQs8(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/TranslateController;->lambda$detectStoryLanguage$29(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kcWsiciu5sLd91VF4DB39pP22mY(Lorg/telegram/messenger/TranslateController$Language;)Ljava/lang/String;
    .locals 0

    .line 431
    iget-object p0, p0, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$lBERHt5vu3CzMicnKRSYziXej_8(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/TranslateController;->lambda$detectPhotoLanguage$39(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lQr7psJk1-t0a6RwsCujzntlkSk(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/messenger/TranslateController;->lambda$translatePhoto$44(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-d1dahnEB-TtzRJ_GNN70Tn-uo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 1019
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string/jumbo v1, "summarize_limit"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$m2mtz5NmUIh8xSfwfY9sxiQzk7U(Lorg/telegram/messenger/TranslateController;JLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/TranslateController;->lambda$setDialogTranslateTo$0(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ogpEaxb9JmIC6s_561tRHjzJzY8(Landroid/icu/text/Collator;Lorg/telegram/messenger/TranslateController$Language;Lorg/telegram/messenger/TranslateController$Language;)I
    .locals 0

    .line 456
    iget-object p1, p1, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pak5F6-gVBDWBegwkuR7c1KDEsw(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;ZJLjava/lang/Integer;Lorg/telegram/messenger/TranslateController$PollText;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/TranslateController;->lambda$checkTranslation$8(Lorg/telegram/messenger/MessageObject;ZJLjava/lang/Integer;Lorg/telegram/messenger/TranslateController$PollText;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tuuVSNmClG442ezd2gTlX6JZv-A(Lorg/telegram/messenger/TranslateController$Language;)Ljava/lang/String;
    .locals 0

    .line 458
    iget-object p0, p0, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$txjxpHShhmszuzSar6PgDxrJ_X4(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingTranslation;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$TL_error;JLjava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/TranslateController;->lambda$pushToTranslate$23(Lorg/telegram/messenger/TranslateController$PendingTranslation;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$TL_error;JLjava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u0po83DgF6Wy_-vGye_Gk15SWLA(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/Utilities$Callback4;ZILjava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/TranslateController;->lambda$pushToTranslate$22(Lorg/telegram/messenger/Utilities$Callback4;ZILjava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$up7kxXNeViU20WnuclKC4jgG0a0(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/TranslateController;->lambda$translateStory$36(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vFTtW1njkOPEc5RZTzT2NSHdAOo(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingPollTranslation;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TranslateController;->lambda$pushPollToTranslate$27(Lorg/telegram/messenger/TranslateController$PendingPollTranslation;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vcY-QAvGFwsNONzEm2BurXE6Cxc(Lorg/telegram/messenger/TranslateController;JLorg/telegram/messenger/TranslateController$PendingPollTranslation;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/TranslateController;->lambda$pushPollToTranslate$28(JLorg/telegram/messenger/TranslateController$PendingPollTranslation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xcGQ87z7trn4mc_7z0zS6Hcxqjo(Lorg/telegram/messenger/TranslateController;Ljava/util/HashMap;JLorg/telegram/messenger/TranslateController$PendingTranslation;ZLjava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/TranslateController;->lambda$pushToTranslate$25(Ljava/util/HashMap;JLorg/telegram/messenger/TranslateController$PendingTranslation;ZLjava/util/Set;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 111

    .line 379
    const-string v10, "es"

    const-string/jumbo v11, "uk"

    const-string v0, "en"

    const-string v1, "ar"

    const-string/jumbo v2, "zh"

    const-string v3, "fr"

    const-string v4, "de"

    const-string/jumbo v5, "it"

    const-string/jumbo v6, "ja"

    const-string/jumbo v7, "ko"

    const-string/jumbo v8, "pt"

    const-string/jumbo v9, "ru"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TranslateController;->languagesOrder:Ljava/util/List;

    .line 383
    const-string/jumbo v109, "yo"

    const-string/jumbo v110, "zu"

    const-string v1, "af"

    const-string/jumbo v2, "sq"

    const-string v3, "am"

    const-string v4, "ar"

    const-string v5, "hy"

    const-string v6, "az"

    const-string v7, "eu"

    const-string v8, "be"

    const-string v9, "bn"

    const-string v10, "bs"

    const-string v11, "bg"

    const-string v12, "ca"

    const-string v13, "ceb"

    const-string/jumbo v14, "zh-cn"

    const-string/jumbo v15, "zh"

    const-string/jumbo v16, "zh-tw"

    const-string v17, "co"

    const-string v18, "hr"

    const-string v19, "cs"

    const-string v20, "da"

    const-string/jumbo v21, "nl"

    const-string v22, "en"

    const-string v23, "eo"

    const-string v24, "et"

    const-string v25, "fi"

    const-string v26, "fr"

    const-string v27, "fy"

    const-string v28, "gl"

    const-string/jumbo v29, "ka"

    const-string v30, "de"

    const-string v31, "el"

    const-string v32, "gu"

    const-string v33, "ht"

    const-string v34, "ha"

    const-string v35, "haw"

    const-string v36, "he"

    const-string v37, "hi"

    const-string v38, "hmn"

    const-string v39, "hu"

    const-string v40, "is"

    const-string v41, "ig"

    const-string v42, "id"

    const-string v43, "ga"

    const-string/jumbo v44, "it"

    const-string/jumbo v45, "ja"

    const-string/jumbo v46, "jv"

    const-string/jumbo v47, "kn"

    const-string/jumbo v48, "kk"

    const-string/jumbo v49, "km"

    const-string/jumbo v50, "rw"

    const-string/jumbo v51, "ko"

    const-string/jumbo v52, "ku"

    const-string/jumbo v53, "ky"

    const-string/jumbo v54, "lo"

    const-string/jumbo v55, "la"

    const-string/jumbo v56, "lv"

    const-string/jumbo v57, "lt"

    const-string/jumbo v58, "lb"

    const-string/jumbo v59, "mk"

    const-string/jumbo v60, "mg"

    const-string/jumbo v61, "ms"

    const-string/jumbo v62, "ml"

    const-string/jumbo v63, "mt"

    const-string/jumbo v64, "mi"

    const-string/jumbo v65, "mr"

    const-string/jumbo v66, "mn"

    const-string/jumbo v67, "my"

    const-string/jumbo v68, "ne"

    const-string/jumbo v69, "no"

    const-string/jumbo v70, "ny"

    const-string/jumbo v71, "or"

    const-string/jumbo v72, "ps"

    const-string v73, "fa"

    const-string/jumbo v74, "pl"

    const-string/jumbo v75, "pt"

    const-string/jumbo v76, "pa"

    const-string/jumbo v77, "ro"

    const-string/jumbo v78, "ru"

    const-string/jumbo v79, "sm"

    const-string v80, "gd"

    const-string/jumbo v81, "sr"

    const-string/jumbo v82, "st"

    const-string/jumbo v83, "sn"

    const-string/jumbo v84, "sd"

    const-string/jumbo v85, "si"

    const-string/jumbo v86, "sk"

    const-string/jumbo v87, "sl"

    const-string/jumbo v88, "so"

    const-string v89, "es"

    const-string/jumbo v90, "su"

    const-string/jumbo v91, "sw"

    const-string/jumbo v92, "sv"

    const-string/jumbo v93, "tl"

    const-string/jumbo v94, "tg"

    const-string/jumbo v95, "ta"

    const-string/jumbo v96, "tt"

    const-string/jumbo v97, "te"

    const-string/jumbo v98, "th"

    const-string/jumbo v99, "tr"

    const-string/jumbo v100, "tk"

    const-string/jumbo v101, "uk"

    const-string/jumbo v102, "ur"

    const-string/jumbo v103, "ug"

    const-string/jumbo v104, "uz"

    const-string/jumbo v105, "vi"

    const-string v106, "cy"

    const-string/jumbo v107, "xh"

    const-string/jumbo v108, "yi"

    filled-new-array/range {v1 .. v110}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TranslateController;->allLanguages:Ljava/util/List;

    const/4 v0, 0x0

    .line 463
    sput-object v0, Lorg/telegram/messenger/TranslateController;->suggestedLanguageCodes:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 2

    .line 90
    iget v0, p1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {p0, v0}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 73
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogs:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogMessages:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->translateDialogLanguage:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->detectedDialogLanguage:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->keptReplyMessageObjects:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->hideTranslateDialogs:Ljava/util/Set;

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingLanguageChecks:Ljava/util/ArrayList;

    .line 985
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    .line 986
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->loadingTranscriptionTranslations:Ljava/util/Set;

    .line 987
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingTranslations:Ljava/util/HashMap;

    .line 988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingTranscriptionsTranslations:Ljava/util/HashMap;

    .line 990
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->loadingSummarizations:Ljava/util/HashSet;

    .line 1331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingPollTranslations:Ljava/util/HashMap;

    .line 1752
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->detectingStories:Ljava/util/HashSet;

    .line 1753
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatingStories:Ljava/util/HashSet;

    .line 1872
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->detectingPhotos:Ljava/util/HashSet;

    .line 1873
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatingPhotos:Ljava/util/HashSet;

    .line 91
    iput-object p1, p0, Lorg/telegram/messenger/TranslateController;->messagesController:Lorg/telegram/messenger/MessagesController;

    .line 93
    new-instance p1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda30;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/TranslateController;)V

    const-wide/16 v0, 0x96

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static analyzeSuggestedLanguageCodes()V
    .locals 7

    .line 468
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 470
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 475
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 478
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 480
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 483
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 486
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->getRestrictedLanguages()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 488
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 491
    :goto_2
    :try_start_3
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 492
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 493
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v4, 0x1

    .line 494
    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    .line 495
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 496
    const-string/jumbo v5, "keyboard"

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 497
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 498
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 499
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 505
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 507
    :cond_4
    sput-object v0, Lorg/telegram/messenger/TranslateController;->suggestedLanguageCodes:Ljava/util/LinkedHashSet;

    return-void
.end method

.method private checkDialogTranslatable(Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    if-eqz p1, :cond_b

    .line 933
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 937
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    .line 938
    iget-object v2, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogMessages:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/TranslateController$TranslatableDecision;

    if-nez v2, :cond_1

    .line 940
    iget-object v2, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogMessages:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/TranslateController$TranslatableDecision;

    invoke-direct {v4}, Lorg/telegram/messenger/TranslateController$TranslatableDecision;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    .line 943
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/TranslateController;->isTranslatable(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "und"

    if-eqz v3, :cond_3

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 945
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v4

    .line 948
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/TranslateController;->isTranslatable(Lorg/telegram/messenger/MessageObject;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 950
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    .line 951
    invoke-direct {p0, v6}, Lorg/telegram/messenger/TranslateController;->isLanguageRestricted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    :cond_4
    if-eqz v3, :cond_5

    .line 955
    iget-object v4, v2, Lorg/telegram/messenger/TranslateController$TranslatableDecision;->unknown:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    .line 957
    iget-object v4, v2, Lorg/telegram/messenger/TranslateController$TranslatableDecision;->certainlyTranslatable:Ljava/util/Set;

    goto :goto_1

    :cond_6
    iget-object v4, v2, Lorg/telegram/messenger/TranslateController$TranslatableDecision;->certainlyNotTranslatable:Ljava/util/Set;

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    if-nez v3, :cond_7

    .line 961
    iget-object v3, p0, Lorg/telegram/messenger/TranslateController;->detectedDialogLanguage:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :cond_7
    iget-object p1, v2, Lorg/telegram/messenger/TranslateController$TranslatableDecision;->certainlyTranslatable:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 965
    iget-object v3, v2, Lorg/telegram/messenger/TranslateController$TranslatableDecision;->unknown:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    .line 966
    iget-object v2, v2, Lorg/telegram/messenger/TranslateController$TranslatableDecision;->certainlyNotTranslatable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int v4, p1, v3

    add-int/2addr v4, v2

    .line 968
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/TranslateController;->isChatAutoTranslated(J)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v6, 0x2

    goto :goto_3

    :cond_8
    const/4 v6, 0x6

    :goto_3
    if-lt v4, v6, :cond_b

    if-eqz v5, :cond_9

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_b

    goto :goto_4

    :cond_9
    int-to-float v6, p1

    add-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr v6, p1

    const p1, 0x3f19999a    # 0.6f

    cmpl-float p1, v6, p1

    if-ltz p1, :cond_b

    :goto_4
    int-to-float p1, v3

    int-to-float v2, v4

    div-float/2addr p1, v2

    if-eqz v5, :cond_a

    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_5

    :cond_a
    const v2, 0x3f266666    # 0.65f

    :goto_5
    cmpg-float p1, p1, v2

    if-gez p1, :cond_b

    .line 977
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogs:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 978
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogMessages:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    new-instance p1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/TranslateController;J)V

    const-wide/16 v0, 0x1c2

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_b
    :goto_6
    return-void
.end method

.method private checkLanguage(Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    .line 892
    invoke-static {}, Lorg/telegram/messenger/LanguageDetector;->hasSupport()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 895
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/TranslateController;->isTranslatable(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 898
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 899
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TranslateController;->checkDialogTranslatable(Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 903
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    .line 904
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TranslateController;->hash(Lorg/telegram/messenger/MessageObject;)I

    move-result v6

    .line 905
    invoke-virtual {p0, v4, v5}, Lorg/telegram/messenger/TranslateController;->isDialogTranslatable(J)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 908
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingLanguageChecks:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 912
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingLanguageChecks:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;JI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method private checkTranslation(Lorg/telegram/messenger/MessageObject;ZZ)V
    .locals 7

    if-eqz p1, :cond_0

    .line 621
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto/16 :goto_4

    .line 625
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    if-eqz p2, :cond_2

    .line 627
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->summaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 629
    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1, v5, v6}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;J)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/messenger/TranslateController;->pushToSummarize(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 640
    :cond_2
    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/TranslateController;->isFeatureAvailable(J)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-nez p3, :cond_4

    .line 644
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_4

    .line 645
    invoke-direct {p0, v1, p2, v0}, Lorg/telegram/messenger/TranslateController;->checkTranslation(Lorg/telegram/messenger/MessageObject;ZZ)V

    .line 648
    :cond_4
    invoke-static {p1}, Lorg/telegram/messenger/TranslateController;->isTranslatable(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 652
    :cond_5
    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 653
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TranslateController;->checkLanguage(Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 657
    :cond_6
    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/TranslateController;->isTranslateDialogHidden(J)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 661
    :cond_7
    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_c

    .line 664
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    if-eqz v2, :cond_8

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    if-eqz v2, :cond_8

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_1

    :cond_8
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :goto_1
    if-nez v2, :cond_9

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz v2, :cond_b

    :cond_9
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz v1, :cond_a

    .line 665
    invoke-static {p1, v1}, Lorg/telegram/messenger/TranslateController$PollText;->isFullyTranslated(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$PollText;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 666
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 668
    :cond_b
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {p0, v5, v6, v1}, Lorg/telegram/messenger/TranslateController;->findReplyMessageObject(JI)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 670
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 671
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 672
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    move-object v3, v1

    goto :goto_2

    :cond_c
    move-object v3, p1

    :goto_2
    if-eqz p2, :cond_0

    .line 676
    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 678
    iget-object p1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    if-eqz p2, :cond_e

    .line 679
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz p2, :cond_d

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryLanguage:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 680
    :cond_d
    new-instance v1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda33;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;J)V

    move-object p2, v4

    invoke-direct {p0, v3, p2, v1}, Lorg/telegram/messenger/TranslateController;->pushToSummarize(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :cond_e
    move-object v2, p0

    move-object p2, v4

    .line 692
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    if-eqz v1, :cond_f

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_3

    :cond_f
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :goto_3
    if-nez v1, :cond_10

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz v1, :cond_12

    :cond_10
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz p1, :cond_11

    .line 694
    invoke-static {v3, p1}, Lorg/telegram/messenger/TranslateController$PollText;->isFullyTranslated(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$PollText;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    iget-object p1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 695
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 697
    :cond_12
    iget p1, v2, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageTranslating:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 698
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz p1, :cond_13

    .line 699
    new-instance v1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda34;

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;ZJ)V

    invoke-direct {p0, v3, p2, v1}, Lorg/telegram/messenger/TranslateController;->pushPollToTranslate(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback3;)V

    return-void

    :cond_13
    move v4, p3

    .line 733
    new-instance v1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda35;

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;ZJ)V

    invoke-direct {p0, v3, p2, v1}, Lorg/telegram/messenger/TranslateController;->pushToTranslate(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback4;)V

    return-void

    :cond_14
    move v4, p3

    if-eqz v4, :cond_15

    .line 774
    invoke-direct {p0, v3}, Lorg/telegram/messenger/TranslateController;->keepReplyMessage(Lorg/telegram/messenger/MessageObject;)V

    :cond_15
    :goto_4
    return-void
.end method

.method private clearAllKeptReplyMessages(J)V
    .locals 1

    .line 1651
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->keptReplyMessageObjects:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private currentLanguage()Ljava/lang/String;
    .locals 2

    .line 259
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 261
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 263
    :cond_0
    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguages()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/TranslateController$Language;",
            ">;"
        }
    .end annotation

    .line 405
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getCurrentTranslator()Lcom/exteragram/messenger/translators/BaseTranslator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/translators/BaseTranslator;->getSupportedLanguages()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x18

    .line 406
    const-string v2, ""

    const-string v3, " "

    const-string/jumbo v4, "nb"

    const-string/jumbo v5, "no"

    const/4 v6, 0x1

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 407
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 408
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 409
    invoke-static {v8}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 410
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 411
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 417
    new-instance v9, Lorg/telegram/messenger/TranslateController$Language;

    invoke-direct {v9}, Lorg/telegram/messenger/TranslateController$Language;-><init>()V

    .line 418
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v8, v4

    :cond_2
    iput-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 419
    invoke-static {v8}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    .line 420
    iget-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v8, v6}, Lorg/telegram/ui/Components/TranslateAlert2;->systemLanguageName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    .line 421
    iget-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    if-nez v8, :cond_3

    goto :goto_1

    .line 424
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v9, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    if-nez v10, :cond_4

    move-object v10, v2

    :cond_4
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->q:Ljava/lang/String;

    .line 425
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 427
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_6

    .line 428
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v1

    .line 429
    new-instance v2, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda23;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda23;-><init>(Landroid/icu/text/Collator;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    .line 431
    :cond_6
    new-instance v1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda24;-><init>()V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    .line 436
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 437
    :goto_2
    sget-object v8, Lorg/telegram/messenger/TranslateController;->allLanguages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_d

    .line 438
    new-instance v9, Lorg/telegram/messenger/TranslateController$Language;

    invoke-direct {v9}, Lorg/telegram/messenger/TranslateController$Language;-><init>()V

    .line 439
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 440
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getCurrentTranslator()Lcom/exteragram/messenger/translators/BaseTranslator;

    move-result-object v8

    invoke-static {}, Lcom/exteragram/messenger/translators/TelegramTranslator;->getInstance()Lcom/exteragram/messenger/translators/TelegramTranslator;

    move-result-object v10

    if-ne v8, v10, :cond_8

    iget-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    const-string v10, "-"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    const-string v10, "_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_3

    .line 443
    :cond_8
    iget-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 444
    iput-object v4, v9, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 446
    :cond_9
    iget-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v8}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    .line 447
    iget-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v8, v6}, Lorg/telegram/ui/Components/TranslateAlert2;->systemLanguageName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    .line 448
    iget-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    if-nez v8, :cond_a

    goto :goto_3

    .line 451
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v9, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    if-nez v10, :cond_b

    move-object v10, v2

    :cond_b
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lorg/telegram/messenger/TranslateController$Language;->q:Ljava/lang/String;

    .line 452
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 454
    :cond_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_e

    .line 455
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v1

    .line 456
    new-instance v2, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda25;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda25;-><init>(Landroid/icu/text/Collator;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    .line 458
    :cond_e
    new-instance v1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda26;-><init>()V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static getLocales()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 548
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    .line 549
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 550
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 551
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz v2, :cond_1

    .line 552
    iget-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "_raw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "remote"

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 553
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    .line 559
    new-instance v2, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/LocaleController$LocaleInfo;)V

    .line 584
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static getSuggestedLanguages(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/TranslateController$Language;",
            ">;"
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    sget-object v1, Lorg/telegram/messenger/TranslateController;->suggestedLanguageCodes:Ljava/util/LinkedHashSet;

    if-nez v1, :cond_0

    .line 513
    invoke-static {}, Lorg/telegram/messenger/TranslateController;->analyzeSuggestedLanguageCodes()V

    .line 514
    sget-object v1, Lorg/telegram/messenger/TranslateController;->suggestedLanguageCodes:Ljava/util/LinkedHashSet;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 518
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 519
    invoke-static {}, Lorg/telegram/messenger/TranslateController;->getLanguages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/messenger/TranslateController$Language;

    if-eqz v5, :cond_1

    .line 520
    iget-object v6, v5, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 521
    iget-object v5, v5, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v5}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_2
    sget-object v2, Lorg/telegram/messenger/TranslateController;->suggestedLanguageCodes:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 525
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 526
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 527
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 530
    :cond_4
    new-instance v4, Lorg/telegram/messenger/TranslateController$Language;

    invoke-direct {v4}, Lorg/telegram/messenger/TranslateController$Language;-><init>()V

    .line 531
    invoke-static {v3}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 532
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v4, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 535
    :cond_5
    const-string/jumbo v3, "no"

    iget-object v5, v4, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "nb"

    goto :goto_2

    :cond_6
    iget-object v3, v4, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 536
    :goto_2
    invoke-static {v3}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    const/4 v5, 0x1

    .line 537
    invoke-static {v3, v5}, Lorg/telegram/ui/Components/TranslateAlert2;->systemLanguageName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    .line 538
    iget-object v3, v4, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_1

    .line 541
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/messenger/TranslateController$Language;->q:Ljava/lang/String;

    .line 542
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    :goto_3
    return-object v0
.end method

.method private hash(Lorg/telegram/messenger/MessageObject;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 255
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public static invalidateSuggestedLanguageCodes()V
    .locals 1

    const/4 v0, 0x0

    .line 465
    sput-object v0, Lorg/telegram/messenger/TranslateController;->suggestedLanguageCodes:Ljava/util/LinkedHashSet;

    return-void
.end method

.method private isChatAutoTranslated(J)Z
    .locals 2

    .line 220
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isDialogTranslatable(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 223
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 224
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->autotranslation:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private isLanguageRestricted(Ljava/lang/String;)Z
    .locals 0

    .line 1655
    invoke-static {p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->isRestrictedLanguage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static isSummarizable(Lorg/telegram/messenger/MessageObject;)Z
    .locals 3

    if-eqz p0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->summary_from_language:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/MessageObject;->isRestrictedMessage:Z

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x64

    if-le p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isTranslatable(Lorg/telegram/messenger/MessageObject;)Z
    .locals 3

    if-eqz p0, :cond_2

    .line 167
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MessageObject;->isRestrictedMessage:Z

    if-nez v0, :cond_2

    .line 172
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const/16 v2, 0x11

    if-ne v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    if-eqz p0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private keepReplyMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1635
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->keptReplyMessageObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1637
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->keptReplyMessageObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1639
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$checkDialogMessageSure$11(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 826
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 827
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 828
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_1

    .line 829
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_1

    if-nez v5, :cond_0

    goto :goto_1

    .line 832
    :cond_0
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 833
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    .line 834
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 835
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessageObject;->updateTranslation(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 840
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$checkDialogMessageSure$12(J)V
    .locals 6

    .line 811
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->messagesController:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 815
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 816
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 817
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    .line 818
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v2, :cond_1

    goto :goto_1

    .line 822
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getMessageWithCustomParamsOnlyInternal(IJ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 819
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 824
    :cond_3
    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/TranslateController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkDialogTranslatable$18(J)V
    .locals 3

    .line 980
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogIsTranslatable:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$checkLanguage$13(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;JI)V
    .locals 1

    if-nez p1, :cond_0

    .line 918
    const-string/jumbo p1, "und"

    .line 920
    :cond_0
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    .line 921
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, p3, p4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 922
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->pendingLanguageChecks:Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 923
    invoke-direct {p0, p2}, Lorg/telegram/messenger/TranslateController;->checkDialogTranslatable(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private synthetic lambda$checkLanguage$14(Lorg/telegram/messenger/MessageObject;JILjava/lang/String;)V
    .locals 7

    .line 915
    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda22;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;JI)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkLanguage$15(Lorg/telegram/messenger/MessageObject;JI)V
    .locals 2

    .line 925
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const-string/jumbo v1, "und"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    .line 926
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, p2, p3, p1}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 927
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->pendingLanguageChecks:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$checkLanguage$16(Lorg/telegram/messenger/MessageObject;JILjava/lang/Exception;)V
    .locals 6

    .line 924
    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda37;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;JI)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkLanguage$17(Lorg/telegram/messenger/MessageObject;JI)V
    .locals 8

    .line 915
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    new-instance v1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda7;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;JI)V

    new-instance v2, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda8;

    move v7, v6

    move-wide v5, v4

    move-object v4, v3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;JI)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LanguageDetector;->detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;)V

    return-void
.end method

.method private synthetic lambda$checkTranslation$6(Lorg/telegram/messenger/MessageObject;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 2

    .line 630
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$Message;->summaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    const/4 v1, 0x0

    if-nez p4, :cond_0

    .line 632
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    .line 635
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p4, p2, p3, v0}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 636
    iget p2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->messageTranslated:I

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x1

    aput-object p1, p4, v0

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$checkTranslation$7(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 1

    .line 681
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p5, :cond_0

    invoke-static {p2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryLanguage:Ljava/lang/String;

    .line 682
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p5, p2, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    const/4 v0, 0x0

    if-nez p5, :cond_1

    .line 684
    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    .line 687
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object p5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, p3, p4, p5}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 688
    iget p2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->messageTranslated:I

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p5, 0x1

    aput-object p1, p4, p5

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$checkTranslation$8(Lorg/telegram/messenger/MessageObject;ZJLjava/lang/Integer;Lorg/telegram/messenger/TranslateController$PollText;Ljava/lang/String;)V
    .locals 4

    .line 700
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wtf, asked to translate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " poll but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, "!"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 703
    :cond_0
    invoke-static {p7}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 704
    iget-object p7, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p5, p7, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 705
    iput-object v0, p7, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 706
    iput-object v0, p7, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 707
    iput-object p6, p7, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz p2, :cond_1

    .line 709
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TranslateController;->keepReplyMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 712
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object p7, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, p3, p4, p7}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 713
    iget p2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p7, Lorg/telegram/messenger/NotificationCenter;->messageTranslated:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2, p7, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 715
    iget-object p2, p0, Lorg/telegram/messenger/TranslateController;->messagesController:Lorg/telegram/messenger/MessagesController;

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    move p3, v3

    .line 717
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_3

    .line 718
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/MessageObject;

    if-eqz p4, :cond_2

    .line 719
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p7

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ne p7, v2, :cond_2

    .line 720
    iget-object p1, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p5, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 721
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 722
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 723
    iput-object p6, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    .line 724
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->updateTranslation()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 725
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v3

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$checkTranslation$9(Lorg/telegram/messenger/MessageObject;ZJLjava/lang/Boolean;Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Ljava/lang/String;)V
    .locals 4

    .line 734
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wtf, asked to translate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p6, "!"

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 737
    :cond_0
    invoke-static {p8}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 738
    iget-object p8, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p6, p8, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 739
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p8

    if-eqz p8, :cond_1

    .line 740
    iget-object p8, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p7, p8, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_0

    .line 742
    :cond_1
    iget-object p8, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p7, p8, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 744
    :goto_0
    iget-object p8, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v0, 0x0

    iput-object v0, p8, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz p2, :cond_2

    .line 746
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TranslateController;->keepReplyMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 749
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object p8, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, p3, p4, p8}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 750
    iget p2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p8, Lorg/telegram/messenger/NotificationCenter;->messageTranslated:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2, p8, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 752
    iget-object p2, p0, Lorg/telegram/messenger/TranslateController;->messagesController:Lorg/telegram/messenger/MessagesController;

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    move p3, v3

    .line 754
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_5

    .line 755
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/MessageObject;

    if-eqz p4, :cond_4

    .line 756
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ne p8, v2, :cond_4

    .line 757
    iget-object p1, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p6, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 758
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 759
    iget-object p1, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p7, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_2

    .line 761
    :cond_3
    iget-object p1, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p7, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 763
    :goto_2
    iget-object p1, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    .line 764
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->updateTranslation()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 765
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v3

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private synthetic lambda$detectPhotoLanguage$37(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 1893
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    .line 1894
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v1, p3, Lorg/telegram/messenger/TranslateController$MessageKey;->dialogId:J

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 1895
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->detectingPhotos:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 1897
    invoke-interface {p4, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$detectPhotoLanguage$38(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 6

    .line 1892
    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$detectPhotoLanguage$39(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 4

    .line 1900
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const-string/jumbo v1, "und"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    .line 1901
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v2, p2, Lorg/telegram/messenger/TranslateController$MessageKey;->dialogId:J

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 1902
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->detectingPhotos:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 1904
    invoke-interface {p3, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$detectPhotoLanguage$40(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Exception;)V
    .locals 0

    .line 1899
    new-instance p4, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda15;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$detectStoryLanguage$29(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;)V
    .locals 2

    .line 1768
    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->detectedLng:Ljava/lang/String;

    .line 1769
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesStorage()Lorg/telegram/ui/Stories/StoriesStorage;

    move-result-object p2

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->putStoryInternal(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1770
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->detectingStories:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$detectStoryLanguage$30(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/String;)V
    .locals 1

    .line 1767
    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$detectStoryLanguage$31(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;)V
    .locals 3

    .line 1772
    const-string/jumbo v0, "und"

    iput-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->detectedLng:Ljava/lang/String;

    .line 1773
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesStorage()Lorg/telegram/ui/Stories/StoriesStorage;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->putStoryInternal(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1774
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->detectingStories:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$detectStoryLanguage$32(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Exception;)V
    .locals 0

    .line 1771
    new-instance p3, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$invalidateTranslation$10(Lorg/telegram/messenger/MessageObject;J)V
    .locals 3

    .line 796
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageTranslated:I

    invoke-virtual {p0, p2, p3}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p3, v2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object p1, p3, v2

    const/4 p1, 0x2

    aput-object p2, p3, p1

    invoke-virtual {v0, v1, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$pushPollToTranslate$26(Lorg/telegram/messenger/TranslateController$PendingPollTranslation;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    .line 1480
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1435
    monitor-enter p0

    .line 1436
    :try_start_0
    iget-object v6, v0, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->messageIds:Ljava/util/ArrayList;

    .line 1437
    iget-object v7, v0, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->callbacks:Ljava/util/ArrayList;

    .line 1438
    iget-object v8, v0, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->messageTexts:Ljava/util/ArrayList;

    .line 1439
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1440
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;

    if-eqz v9, :cond_d

    .line 1441
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;

    .line 1442
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_b

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Landroid/util/Pair;

    .line 1445
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lorg/telegram/messenger/TranslateController$PollText;

    .line 1446
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lorg/telegram/messenger/TranslateController$PollText;

    .line 1448
    new-instance v13, Lorg/telegram/messenger/TranslateController$PollText;

    invoke-direct {v13}, Lorg/telegram/messenger/TranslateController$PollText;-><init>()V

    if-eqz v11, :cond_0

    .line 1449
    iget-object v14, v11, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v14, :cond_0

    .line 1450
    iput-object v14, v13, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_2

    .line 1451
    :cond_0
    iget-object v14, v12, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v14, :cond_2

    .line 1452
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v5, v14, :cond_1

    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move/from16 v18, v14

    move-object v14, v5

    move/from16 v5, v18

    .line 1453
    :goto_1
    iget-object v15, v12, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-static {v15, v14}, Lorg/telegram/ui/Components/TranslateAlert2;->preprocess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v14

    iput-object v14, v13, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1455
    :cond_2
    :goto_2
    iget-object v14, v12, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v11, :cond_3

    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    iget-object v15, v11, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    :goto_3
    if-eq v14, v15, :cond_6

    .line 1456
    iget-object v14, v12, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v15, :cond_5

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v10, v10, 0x1

    move/from16 p2, v4

    move-object/from16 v4, v17

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    move-object/from16 v17, v8

    .line 1457
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v5, v8, :cond_4

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    move/from16 p3, v5

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move/from16 p3, v8

    move-object v8, v5

    .line 1458
    :goto_5
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;-><init>()V

    .line 1459
    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1460
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    .line 1461
    iget-object v4, v13, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v8, v17

    goto :goto_4

    :cond_5
    move/from16 p2, v4

    move-object/from16 v17, v8

    goto :goto_6

    :cond_6
    move/from16 p2, v4

    move-object/from16 v17, v8

    if-eqz v11, :cond_7

    .line 1464
    iget-object v4, v11, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    iput-object v4, v13, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    :cond_7
    :goto_6
    if-eqz v11, :cond_8

    .line 1466
    iget-object v4, v11, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v4, :cond_8

    .line 1467
    iput-object v4, v13, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_8

    .line 1468
    :cond_8
    iget-object v4, v12, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v4, :cond_a

    .line 1469
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v5, v4, :cond_9

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    goto :goto_7

    :cond_9
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-object/from16 v18, v5

    move v5, v4

    move-object/from16 v4, v18

    .line 1470
    :goto_7
    iget-object v8, v12, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-static {v8, v4}, Lorg/telegram/ui/Components/TranslateAlert2;->preprocess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v4

    iput-object v4, v13, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1472
    :cond_a
    :goto_8
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, p2

    move-object/from16 v8, v17

    goto/16 :goto_0

    .line 1474
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_c

    .line 1476
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/Utilities$Callback3;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/TranslateController$PollText;

    iget-object v10, v0, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->language:Ljava/lang/String;

    invoke-interface {v5, v8, v9, v10}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    const/16 v16, 0x0

    goto :goto_d

    :cond_d
    const/4 v2, 0x2

    if-eqz v3, :cond_e

    .line 1478
    const-string v8, "TO_LANG_INVALID"

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    move-wide/from16 v8, p4

    const/4 v10, 0x0

    .line 1479
    invoke-virtual {v1, v8, v9, v10}, Lorg/telegram/messenger/TranslateController;->toggleTranslatingDialog(JZ)Z

    .line 1480
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    sget v7, Lorg/telegram/messenger/R$string;->TranslationFailedAlert2:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v10

    aput-object v7, v2, v4

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_a

    :cond_e
    if-eqz v3, :cond_f

    .line 1482
    const-string v8, "QUOTA_EXCEEDED"

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1483
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v8, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    sget v9, Lorg/telegram/messenger/R$string;->TranslationFailedAlert1:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v2, v16

    aput-object v9, v2, v4

    invoke-virtual {v3, v8, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_b

    :cond_f
    const/16 v16, 0x0

    :goto_b
    move/from16 v10, v16

    .line 1485
    :goto_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_10

    .line 1486
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Utilities$Callback3;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->language:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 1489
    :cond_10
    :goto_d
    monitor-enter p0

    move/from16 v10, v16

    .line 1490
    :goto_e
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_11

    .line 1491
    iget-object v0, v1, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :catchall_0
    move-exception v0

    goto :goto_f

    .line 1493
    :cond_11
    monitor-exit p0

    return-void

    :goto_f
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 1439
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private synthetic lambda$pushPollToTranslate$27(Lorg/telegram/messenger/TranslateController$PendingPollTranslation;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1431
    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda16;

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingPollTranslation;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$pushPollToTranslate$28(JLorg/telegram/messenger/TranslateController$PendingPollTranslation;)V
    .locals 12

    .line 1402
    monitor-enter p0

    .line 1403
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingTranslations:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1406
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingTranslations:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 1410
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;-><init>()V

    .line 1413
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    .line 1414
    iget-object v1, p3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->messageTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    :goto_1
    if-ge v4, v2, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/util/Pair;

    .line 1415
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lorg/telegram/messenger/TranslateController$PollText;

    .line 1416
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lorg/telegram/messenger/TranslateController$PollText;

    .line 1417
    iget-object v7, v6, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v7, :cond_3

    if-eqz v5, :cond_2

    iget-object v8, v5, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-nez v8, :cond_3

    .line 1418
    :cond_2
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    :cond_3
    iget-object v7, v6, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v5, :cond_4

    move v8, v3

    goto :goto_2

    :cond_4
    iget-object v8, v5, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_2
    if-eq v7, v8, :cond_5

    .line 1421
    iget-object v7, v6, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    :goto_3
    if-ge v9, v8, :cond_5

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    .line 1422
    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1425
    :cond_5
    iget-object v6, v6, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_6

    iget-object v5, v5, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-nez v5, :cond_1

    .line 1426
    :cond_6
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1429
    :cond_7
    iget-object v1, p3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->language:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->to_lang:Ljava/lang/String;

    .line 1431
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p3, p1, p2}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingPollTranslation;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 1495
    monitor-enter p0

    .line 1496
    :try_start_1
    iput p1, p3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->reqId:I

    .line 1497
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 1410
    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private synthetic lambda$pushToSummarize$20(ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 1011
    iget-object p4, p0, Lorg/telegram/messenger/TranslateController;->loadingSummarizations:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1012
    invoke-interface {p2, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p4, :cond_2

    .line 1014
    const-string p3, "SUMMARY_FLOOD_PREMIUM"

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1015
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1017
    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p4

    sget v0, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v1, Lorg/telegram/messenger/R$string;->SummaryLimit:I

    .line 1018
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->SummaryLimitUpgrade:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda45;

    invoke-direct {v3, p3}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p4, v0, v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p3

    const/16 p4, 0x1388

    .line 1021
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p3

    const/4 p4, 0x1

    .line 1022
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 1025
    :cond_1
    iget-object p3, p0, Lorg/telegram/messenger/TranslateController;->loadingSummarizations:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1026
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$pushToTranslate$21(Lorg/telegram/messenger/Utilities$Callback4;ZILjava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p7, :cond_0

    .line 1134
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    .line 1135
    iput-object p7, p5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 1136
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3, p5, p4}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1138
    invoke-virtual {p0, p5, p6, p1}, Lorg/telegram/messenger/TranslateController;->toggleTranslatingDialog(JZ)Z

    .line 1139
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_1

    sget p6, Lorg/telegram/messenger/R$string;->TranslationFailedAlert1:I

    goto :goto_0

    :cond_1
    sget p6, Lorg/telegram/messenger/R$string;->TranslationFailedAlert2:I

    :goto_0
    invoke-static {p6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p6

    const/4 p7, 0x2

    new-array p7, p7, [Ljava/lang/Object;

    aput-object p5, p7, p1

    aput-object p6, p7, p4

    invoke-virtual {p2, p3, p7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$pushToTranslate$22(Lorg/telegram/messenger/Utilities$Callback4;ZILjava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p7, :cond_0

    .line 1199
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    .line 1200
    iput-object p7, p5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 1201
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3, p5, p4}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1203
    invoke-virtual {p0, p5, p6, p1}, Lorg/telegram/messenger/TranslateController;->toggleTranslatingDialog(JZ)Z

    .line 1204
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_1

    sget p6, Lorg/telegram/messenger/R$string;->TranslationFailedAlert1:I

    goto :goto_0

    :cond_1
    sget p6, Lorg/telegram/messenger/R$string;->TranslationFailedAlert2:I

    :goto_0
    invoke-static {p6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p6

    const/4 p7, 0x2

    new-array p7, p7, [Ljava/lang/Object;

    aput-object p5, p7, p1

    aput-object p6, p7, p4

    invoke-virtual {p2, p3, p7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$pushToTranslate$23(Lorg/telegram/messenger/TranslateController$PendingTranslation;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$TL_error;JLjava/util/Set;)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const/4 v3, 0x1

    .line 1210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1180
    monitor-enter p0

    .line 1181
    :try_start_0
    iget-object v8, v0, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;

    .line 1182
    iget-object v9, v0, Lorg/telegram/messenger/TranslateController$PendingTranslation;->callbacks:Ljava/util/ArrayList;

    .line 1183
    iget-object v10, v0, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageTexts:Ljava/util/ArrayList;

    .line 1184
    iget-object v5, v0, Lorg/telegram/messenger/TranslateController$PendingTranslation;->language:Ljava/lang/String;

    .line 1185
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1186
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;

    const/4 v11, 0x0

    if-eqz v6, :cond_0

    .line 1187
    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;

    .line 1188
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v11

    :goto_0
    if-ge v2, v1, :cond_4

    .line 1190
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/Utilities$Callback4;

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-static {v7, v12}, Lorg/telegram/ui/Components/TranslateAlert2;->preprocess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v7

    invoke-interface {v3, v4, v6, v7, v5}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    if-eqz v2, :cond_1

    .line 1192
    const-string v1, "TRANSLATIONS_DISABLED_ALT"

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v13, v11

    .line 1193
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_4

    .line 1194
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1195
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/messenger/Utilities$Callback4;

    .line 1196
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 1197
    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda21;

    move-object v1, p0

    move/from16 v3, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/Utilities$Callback4;ZILjava/lang/String;J)V

    invoke-static {v14, v12, v5, v0}, Lorg/telegram/ui/Components/TranslateAlert2;->alternativeTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-eqz v2, :cond_2

    .line 1208
    const-string v6, "TO_LANG_INVALID"

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-wide/from16 v6, p5

    .line 1209
    invoke-virtual {p0, v6, v7, v11}, Lorg/telegram/messenger/TranslateController;->toggleTranslatingDialog(JZ)Z

    .line 1210
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    sget v6, Lorg/telegram/messenger/R$string;->TranslationFailedAlert2:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v11

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    .line 1212
    const-string v6, "QUOTA_EXCEEDED"

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1213
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v6, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    sget v7, Lorg/telegram/messenger/R$string;->TranslationFailedAlert1:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v11

    aput-object v7, v5, v3

    invoke-virtual {v2, v6, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    move v2, v11

    .line 1215
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1216
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/Utilities$Callback4;

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, v0, Lorg/telegram/messenger/TranslateController$PendingTranslation;->language:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v12, v6}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1219
    :cond_4
    :goto_3
    monitor-enter p0

    .line 1220
    :goto_4
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_5

    .line 1221
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 1223
    :cond_5
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 1185
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private synthetic lambda$pushToTranslate$24(Lorg/telegram/messenger/TranslateController$PendingTranslation;ZJLjava/util/Set;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 1175
    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v6, p3

    move-object v8, p5

    move-object v3, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingTranslation;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$TL_error;JLjava/util/Set;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$pushToTranslate$25(Ljava/util/HashMap;JLorg/telegram/messenger/TranslateController$PendingTranslation;ZLjava/util/Set;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 1115
    monitor-enter p0

    .line 1116
    :try_start_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1118
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1119
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 1123
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->translationsAutoEnabled:Ljava/lang/String;

    .line 1126
    const-string v1, "alternative"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "system"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1164
    :cond_1
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;-><init>()V

    if-eqz p5, :cond_2

    .line 1166
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    .line 1167
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;

    iget-object v1, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-wide/from16 v14, p2

    goto :goto_1

    .line 1169
    :cond_2
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    .line 1170
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-wide/from16 v14, p2

    invoke-virtual {v0, v14, v15}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1171
    iget-object v0, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->id:Ljava/util/ArrayList;

    .line 1173
    :goto_1
    iget-object v0, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->language:Ljava/lang/String;

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->to_lang:Ljava/lang/String;

    .line 1175
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda13;

    move-object/from16 v1, p0

    move/from16 v3, p5

    move-object/from16 v6, p6

    move-wide v4, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingTranslation;ZJLjava/util/Set;)V

    invoke-virtual {v8, v7, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 1225
    monitor-enter p0

    .line 1226
    :try_start_1
    iput v0, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->reqId:I

    .line 1227
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1127
    :cond_3
    :goto_2
    iget-object v13, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->language:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1128
    :goto_3
    iget-object v1, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1129
    iget-object v1, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1130
    iget-object v1, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/telegram/messenger/Utilities$Callback4;

    .line 1131
    iget-object v1, v2, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 1132
    new-instance v8, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda12;

    move-object/from16 v9, p0

    move-wide/from16 v14, p2

    move/from16 v11, p5

    invoke-direct/range {v8 .. v15}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/Utilities$Callback4;ZILjava/lang/String;J)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v13, v8}, Lorg/telegram/ui/Components/TranslateAlert2;->alternativeTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void

    .line 1123
    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private synthetic lambda$setDialogTranslateTo$0(JLjava/lang/String;)V
    .locals 3

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translateDialogLanguage:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object p3, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 293
    invoke-direct {p0}, Lorg/telegram/messenger/TranslateController;->saveTranslatingDialogsCache()V

    .line 294
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget p3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogTranslate:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    const/4 p1, 0x1

    aput-object v0, p2, p1

    invoke-virtual {p3, v1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 294
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$translatePhoto$41(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V
    .locals 2

    .line 1959
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 1960
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v0, 0x0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1961
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-wide v0, p3, Lorg/telegram/messenger/TranslateController$MessageKey;->dialogId:J

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 1962
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->translatingPhotos:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 1964
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p5

    const-wide/16 p5, 0x190

    sub-long/2addr p5, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p4, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$translatePhoto$42(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V
    .locals 1

    .line 1971
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 1972
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p3, p4}, Lorg/telegram/ui/Components/TranslateAlert2;->preprocess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1973
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-wide p3, p5, Lorg/telegram/messenger/TranslateController$MessageKey;->dialogId:J

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, p3, p4, p1}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 1974
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->translatingPhotos:Ljava/util/HashSet;

    invoke-virtual {p1, p5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p6, :cond_0

    .line 1976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p7

    const-wide/16 p3, 0x190

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p6, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$translatePhoto$43(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V
    .locals 2

    .line 1981
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 1982
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v0, 0x0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1983
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-wide v0, p3, Lorg/telegram/messenger/TranslateController$MessageKey;->dialogId:J

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 1984
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->translatingPhotos:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 1986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p5

    const-wide/16 p5, 0x190

    sub-long/2addr p5, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p4, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$translatePhoto$44(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13

    move-object/from16 v0, p8

    .line 1955
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;

    if-eqz v1, :cond_1

    .line 1956
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;

    .line 1957
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1958
    new-instance v2, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda27;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1969
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1970
    new-instance v3, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda28;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v12}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1980
    :cond_1
    new-instance v3, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda29;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;J)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$translateStory$33(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V
    .locals 2

    .line 1821
    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    const/4 p2, 0x0

    .line 1822
    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1823
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesStorage()Lorg/telegram/ui/Stories/StoriesStorage;

    move-result-object p2

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->putStoryInternal(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1824
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->translatingStories:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 1826
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$translateStory$34(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V
    .locals 0

    .line 1833
    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    .line 1834
    invoke-static {p3, p4}, Lorg/telegram/ui/Components/TranslateAlert2;->preprocess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1835
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesStorage()Lorg/telegram/ui/Stories/StoriesStorage;

    move-result-object p2

    iget-wide p3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p2, p3, p4, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->putStoryInternal(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1836
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->translatingStories:Ljava/util/HashSet;

    invoke-virtual {p1, p5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p6, :cond_0

    .line 1838
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$translateStory$35(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V
    .locals 2

    .line 1843
    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    const/4 p2, 0x0

    .line 1844
    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1845
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesStorage()Lorg/telegram/ui/Stories/StoriesStorage;

    move-result-object p2

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->putStoryInternal(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1846
    iget-object p1, p0, Lorg/telegram/messenger/TranslateController;->translatingStories:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 1848
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$translateStory$36(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    move-object/from16 v0, p6

    .line 1817
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;

    if-eqz v1, :cond_1

    .line 1818
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;

    .line 1819
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1820
    new-instance v2, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda39;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1831
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1832
    new-instance v3, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda40;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p3

    move-object v10, p4

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1842
    :cond_1
    new-instance v3, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda41;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadTranslatingDialogsCached()V
    .locals 12

    .line 1659
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->messagesController:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "translating_dialog_languages2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1663
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    .line 1665
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_8

    .line 1666
    aget-object v4, v0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1667
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    goto/16 :goto_2

    .line 1670
    :cond_1
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v5, 0x1

    .line 1671
    aget-object v4, v4, v5

    const-string v9, ">"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1672
    array-length v9, v4

    if-eq v9, v6, :cond_2

    goto :goto_2

    .line 1675
    :cond_2
    aget-object v6, v4, v1

    aget-object v4, v4, v5

    .line 1677
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x21

    if-ne v9, v10, :cond_3

    .line 1679
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v4, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v9, v5

    goto :goto_1

    :cond_3
    move v9, v1

    .line 1681
    :goto_1
    const-string/jumbo v10, "null"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v6, v2

    .line 1682
    :cond_4
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v4, v2

    :cond_5
    if-eqz v6, :cond_7

    .line 1684
    iget-object v10, p0, Lorg/telegram/messenger/TranslateController;->detectedDialogLanguage:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    invoke-direct {p0, v6}, Lorg/telegram/messenger/TranslateController;->isLanguageRestricted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1686
    iget-object v6, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    xor-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v7, v8, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1687
    iget-object v5, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogs:Ljava/util/Set;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v4, :cond_7

    .line 1690
    iget-object v5, p0, Lorg/telegram/messenger/TranslateController;->translateDialogLanguage:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1695
    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->messagesController:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hidden_translation_at"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1697
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1698
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1700
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController;->hideTranslateDialogs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 1702
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method private pushPollToTranslate(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/Utilities$Callback3<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/TranslateController$PollText;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 1351
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-ltz v0, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 1355
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    .line 1358
    monitor-enter p0

    .line 1359
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/TranslateController;->pendingPollTranslations:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1361
    iget-object v2, p0, Lorg/telegram/messenger/TranslateController;->pendingPollTranslations:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 1364
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1365
    new-instance v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;-><init>(Lorg/telegram/messenger/TranslateController-IA;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1367
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;

    .line 1370
    :goto_1
    iget-object v5, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1371
    monitor-exit p0

    return-void

    .line 1374
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v5

    .line 1375
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-nez v6, :cond_4

    .line 1376
    monitor-exit p0

    return-void

    .line 1378
    :cond_4
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1379
    invoke-static {v5}, Lorg/telegram/messenger/TranslateController$PollText;->fromPoll(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;)Lorg/telegram/messenger/TranslateController$PollText;

    move-result-object v5

    .line 1380
    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    .line 1381
    invoke-virtual {v5}, Lorg/telegram/messenger/TranslateController$PollText;->length()I

    move-result v7

    .line 1383
    iget v8, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->symbolsCount:I

    add-int/2addr v8, v7

    const/16 v9, 0x61a8

    if-ge v8, v9, :cond_5

    iget-object v8, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->messageIds:Ljava/util/ArrayList;

    .line 1384
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x14

    if-lt v8, v9, :cond_6

    .line 1385
    :cond_5
    iget-object v8, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->runnable:Ljava/lang/Runnable;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1386
    iget-object v3, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->runnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1387
    new-instance v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;-><init>(Lorg/telegram/messenger/TranslateController-IA;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    :cond_6
    iget-object v2, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->runnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_7

    .line 1391
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1393
    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1394
    iget-object v2, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pending translation +"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " poll message"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1396
    iget-object p1, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->messageTexts:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1397
    iget-object p1, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    iput-object p2, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->language:Ljava/lang/String;

    .line 1399
    iget p1, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->symbolsCount:I

    add-int/2addr p1, v7

    iput p1, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->symbolsCount:I

    .line 1401
    new-instance p1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, v0, v1, v3}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/TranslateController;JLorg/telegram/messenger/TranslateController$PendingPollTranslation;)V

    iput-object p1, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->runnable:Ljava/lang/Runnable;

    .line 1499
    iget p2, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->delay:I

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1500
    iget p1, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->delay:I

    div-int/lit8 p1, p1, 0x2

    iput p1, v3, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->delay:I

    .line 1501
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method private pushToSummarize(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;",
            ">;)V"
        }
    .end annotation

    .line 997
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    const/4 v0, 0x2

    aput-object v4, v5, v0

    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 998
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController;->loadingSummarizations:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1000
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController;->loadingSummarizations:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1002
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;-><init>()V

    .line 1003
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1004
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->id:I

    if-eqz p2, :cond_2

    .line 1006
    iget p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->flags:I

    or-int/2addr p1, v3

    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->flags:I

    .line 1007
    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_summarizeText;->to_lang:Ljava/lang/String;

    .line 1009
    :cond_2
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v0, p3}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/TranslateController;ILorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v1, p2, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    return-void
.end method

.method private pushToTranslate(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback4;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/Utilities$Callback4<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    if-eqz v0, :cond_11

    .line 1049
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_11

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ltz v3, :cond_11

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 1053
    :cond_0
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v6

    move v6, v5

    .line 1054
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    if-eqz v6, :cond_2

    .line 1056
    iget-object v4, v1, Lorg/telegram/messenger/TranslateController;->pendingTranscriptionsTranslations:Ljava/util/HashMap;

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lorg/telegram/messenger/TranslateController;->pendingTranslations:Ljava/util/HashMap;

    :goto_1
    if-eqz v6, :cond_3

    .line 1057
    iget-object v9, v1, Lorg/telegram/messenger/TranslateController;->loadingTranscriptionTranslations:Ljava/util/Set;

    goto :goto_2

    :cond_3
    iget-object v9, v1, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    .line 1059
    :goto_2
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    if-eqz v6, :cond_4

    .line 1061
    iget-object v11, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 1062
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto/16 :goto_7

    .line 1064
    :cond_4
    iget-object v11, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 1065
    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    .line 1069
    :cond_5
    monitor-enter p0

    .line 1070
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_6

    .line 1072
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v12

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 1075
    :cond_6
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_7

    .line 1076
    new-instance v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;

    invoke-direct {v12, v13}, Lorg/telegram/messenger/TranslateController$PendingTranslation;-><init>(Lorg/telegram/messenger/TranslateController-IA;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1078
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;

    .line 1081
    :goto_4
    iget-object v14, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1082
    monitor-exit p0

    return-void

    :cond_8
    if-eqz v6, :cond_a

    .line 1087
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    if-nez v14, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_5

    .line 1088
    :cond_a
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v14, :cond_b

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v14, :cond_b

    .line 1089
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_5

    .line 1090
    :cond_b
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v14, :cond_c

    .line 1091
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v5

    goto :goto_5

    .line 1092
    :cond_c
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v14, :cond_d

    .line 1093
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1096
    :cond_d
    :goto_5
    iget v14, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->symbolsCount:I

    add-int/2addr v14, v5

    const/16 v15, 0x61a8

    if-ge v14, v15, :cond_e

    iget-object v14, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;

    .line 1097
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v14, v3

    const/16 v3, 0x14

    if-lt v14, v3, :cond_f

    .line 1098
    :cond_e
    iget-object v3, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1099
    iget-object v3, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1100
    new-instance v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;

    invoke-direct {v12, v13}, Lorg/telegram/messenger/TranslateController$PendingTranslation;-><init>(Lorg/telegram/messenger/TranslateController-IA;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_f
    iget-object v3, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_10

    .line 1104
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1106
    :cond_10
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1107
    iget-object v3, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pending translation +"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " message"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1109
    iget-object v0, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-object v0, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    .line 1111
    iput-object v0, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->language:Ljava/lang/String;

    .line 1112
    iget v0, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->symbolsCount:I

    add-int/2addr v0, v5

    iput v0, v12, Lorg/telegram/messenger/TranslateController$PendingTranslation;->symbolsCount:I

    .line 1114
    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda3;

    move-object v2, v4

    move-wide v3, v7

    move-object v7, v9

    move-object v5, v12

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/TranslateController;Ljava/util/HashMap;JLorg/telegram/messenger/TranslateController$PendingTranslation;ZLjava/util/Set;)V

    iput-object v0, v5, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;

    .line 1229
    iget v1, v5, Lorg/telegram/messenger/TranslateController$PendingTranslation;->delay:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1230
    iget v0, v5, Lorg/telegram/messenger/TranslateController$PendingTranslation;->delay:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v5, Lorg/telegram/messenger/TranslateController$PendingTranslation;->delay:I

    .line 1231
    monitor-exit p0

    return-void

    :goto_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_11
    :goto_7
    return-void
.end method

.method private resetTranslatingDialogsCache()V
    .locals 2

    .line 1749
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "translating_dialog_languages2"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hidden_translation_at"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveTranslatingDialogsCache()V
    .locals 9

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    .line 1712
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1714
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    if-nez v1, :cond_0

    .line 1716
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v1, :cond_1

    move v1, v2

    .line 1721
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/TranslateController;->detectedDialogLanguage:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    const-string/jumbo v7, "null"

    if-nez v6, :cond_2

    move-object v6, v7

    .line 1725
    :cond_2
    :try_start_1
    invoke-virtual {p0, v4, v5}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v8

    .line 1729
    :goto_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    iget-object v4, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1731
    const-string v4, "!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1736
    :cond_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1737
    iget-object v2, p0, Lorg/telegram/messenger/TranslateController;->hideTranslateDialogs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1738
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1740
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 1742
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1745
    :cond_6
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "translating_dialog_languages2"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "hidden_translation_at"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public canTranslatePhoto(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1910
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    if-eqz p1, :cond_3

    .line 1913
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 1914
    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    .line 1915
    invoke-direct {p0, p2}, Lorg/telegram/messenger/TranslateController;->isLanguageRestricted(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    iget-boolean p1, p1, Lorg/telegram/messenger/MessageObject;->translated:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public canTranslateStory(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 1779
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->detectedLng:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    .line 1780
    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->detectedLng:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 1781
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TranslateController;->isLanguageRestricted(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public cancelAllTranslations()V
    .locals 12

    .line 1543
    monitor-enter p0

    .line 1544
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingTranslations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1546
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :cond_1
    if-ge v6, v5, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/messenger/TranslateController$PendingTranslation;

    .line 1547
    iget-object v8, v7, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1548
    iget v8, v7, Lorg/telegram/messenger/TranslateController$PendingTranslation;->reqId:I

    if-eq v8, v2, :cond_1

    .line 1549
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    iget v9, v7, Lorg/telegram/messenger/TranslateController$PendingTranslation;->reqId:I

    invoke-virtual {v8, v9, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1550
    iget-object v7, v7, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    :goto_0
    if-ge v9, v8, :cond_1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Ljava/lang/Integer;

    .line 1551
    iget-object v11, p0, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 1557
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingTranscriptionsTranslations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1559
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :cond_4
    if-ge v6, v5, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/messenger/TranslateController$PendingTranslation;

    .line 1560
    iget-object v8, v7, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1561
    iget v8, v7, Lorg/telegram/messenger/TranslateController$PendingTranslation;->reqId:I

    if-eq v8, v2, :cond_4

    .line 1562
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    iget v9, v7, Lorg/telegram/messenger/TranslateController$PendingTranslation;->reqId:I

    invoke-virtual {v8, v9, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1563
    iget-object v7, v7, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Ljava/lang/Integer;

    .line 1564
    iget-object v11, p0, Lorg/telegram/messenger/TranslateController;->loadingTranscriptionTranslations:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1570
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingPollTranslations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 1572
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :cond_7
    if-ge v6, v5, :cond_6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;

    .line 1573
    iget-object v8, v7, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->runnable:Ljava/lang/Runnable;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1574
    iget v8, v7, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->reqId:I

    if-eq v8, v2, :cond_7

    .line 1575
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    iget v9, v7, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->reqId:I

    invoke-virtual {v8, v9, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1576
    iget-object v7, v7, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_7

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Ljava/lang/Integer;

    .line 1577
    iget-object v11, p0, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1583
    :cond_8
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelTranslations(J)V
    .locals 11

    .line 1587
    monitor-enter p0

    .line 1588
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingTranslations:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1590
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :cond_0
    if-ge v5, v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/messenger/TranslateController$PendingTranslation;

    .line 1591
    iget-object v7, v6, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1592
    iget v7, v6, Lorg/telegram/messenger/TranslateController$PendingTranslation;->reqId:I

    if-eq v7, v1, :cond_0

    .line 1593
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    iget v8, v6, Lorg/telegram/messenger/TranslateController$PendingTranslation;->reqId:I

    invoke-virtual {v7, v8, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1594
    iget-object v6, v6, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/Integer;

    .line 1595
    iget-object v10, p0, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 1599
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingTranslations:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingTranscriptionsTranslations:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1603
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :cond_3
    if-ge v5, v4, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/messenger/TranslateController$PendingTranslation;

    .line 1604
    iget-object v7, v6, Lorg/telegram/messenger/TranslateController$PendingTranslation;->runnable:Ljava/lang/Runnable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1605
    iget v7, v6, Lorg/telegram/messenger/TranslateController$PendingTranslation;->reqId:I

    if-eq v7, v1, :cond_3

    .line 1606
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    iget v8, v6, Lorg/telegram/messenger/TranslateController$PendingTranslation;->reqId:I

    invoke-virtual {v7, v8, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1607
    iget-object v6, v6, Lorg/telegram/messenger/TranslateController$PendingTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/Integer;

    .line 1608
    iget-object v10, p0, Lorg/telegram/messenger/TranslateController;->loadingTranscriptionTranslations:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1612
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingTranscriptionsTranslations:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingPollTranslations:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 1617
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :cond_6
    if-ge v5, v4, :cond_7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;

    .line 1618
    iget-object v7, v6, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->runnable:Ljava/lang/Runnable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1619
    iget v7, v6, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->reqId:I

    if-eq v7, v1, :cond_6

    .line 1620
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    iget v8, v6, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->reqId:I

    invoke-virtual {v7, v8, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1621
    iget-object v6, v6, Lorg/telegram/messenger/TranslateController$PendingPollTranslation;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/Integer;

    .line 1622
    iget-object v10, p0, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1626
    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->pendingPollTranslations:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    :cond_8
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkDialogMessage(J)V
    .locals 1

    .line 801
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isFeatureAvailable(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->checkDialogMessageSure(J)V

    :cond_0
    return-void
.end method

.method public checkDialogMessageSure(J)V
    .locals 2

    .line 807
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isChatAutoTranslated(J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 810
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/TranslateController;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkRestrictedLanguagesUpdate()V
    .locals 9

    .line 590
    monitor-enter p0

    .line 591
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 595
    iget-object v5, p0, Lorg/telegram/messenger/TranslateController;->detectedDialogLanguage:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 596
    invoke-direct {p0, v5}, Lorg/telegram/messenger/TranslateController;->isLanguageRestricted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 597
    invoke-virtual {p0, v3, v4}, Lorg/telegram/messenger/TranslateController;->cancelTranslations(J)V

    .line 598
    iget-object v5, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 599
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 602
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 603
    invoke-direct {p0}, Lorg/telegram/messenger/TranslateController;->saveTranslatingDialogsCache()V

    .line 605
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 606
    iget v5, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogTranslate:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 608
    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkTranslation(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 617
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/TranslateController;->checkTranslation(Lorg/telegram/messenger/MessageObject;ZZ)V

    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 848
    invoke-virtual {p0}, Lorg/telegram/messenger/TranslateController;->cancelAllTranslations()V

    .line 849
    invoke-direct {p0}, Lorg/telegram/messenger/TranslateController;->resetTranslatingDialogsCache()V

    .line 851
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 852
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 853
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 854
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translateDialogLanguage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 855
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->detectedDialogLanguage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 856
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->keptReplyMessageObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 857
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->hideTranslateDialogs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 858
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 859
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->loadingTranscriptionTranslations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public clearMessageTranslationState(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 868
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 872
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/TranslateController;->clearMessageTranslationState(Lorg/telegram/messenger/MessageObject;)V

    .line 874
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    .line 875
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 876
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 877
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    .line 878
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 879
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->summaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 880
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 881
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryLanguage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 882
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessageObject;->updateTranslation(Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public clearTranslationCache()V
    .locals 1

    .line 863
    invoke-virtual {p0}, Lorg/telegram/messenger/TranslateController;->cleanup()V

    .line 864
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->clearAllMessageCustomParams()V

    return-void
.end method

.method public detectPhotoLanguage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1876
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/LanguageDetector;->hasSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1879
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_3

    .line 1881
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 1886
    :cond_1
    new-instance v0, Lorg/telegram/messenger/TranslateController$MessageKey;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/TranslateController$MessageKey;-><init>(Lorg/telegram/messenger/MessageObject;)V

    .line 1887
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController;->detectingPhotos:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1890
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController;->detectingPhotos:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1892
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    new-instance v2, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;)V

    new-instance v3, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, v0, p2}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LanguageDetector;->detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public detectStoryLanguage(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1757
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->detectedLng:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/LanguageDetector;->hasSupport()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1761
    :cond_0
    new-instance v0, Lorg/telegram/messenger/TranslateController$StoryKey;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/TranslateController$StoryKey;-><init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1762
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController;->detectingStories:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1765
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController;->detectingStories:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1767
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    new-instance v2, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;)V

    new-instance v3, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda43;

    invoke-direct {v3, p0, p1, v0}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;)V

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LanguageDetector;->detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public findReplyMessageObject(JI)Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 1643
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->keptReplyMessageObjects:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1647
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method public getDialogDetectedLanguage(J)Ljava/lang/String;
    .locals 1

    .line 613
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->detectedDialogLanguage:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDialogTranslateTo(J)Ljava/lang/String;
    .locals 2

    .line 267
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translateDialogLanguage:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 269
    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->getDialogDetectedLanguage(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->isRestrictedLanguage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->primaryLanguageOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->getDialogDetectedLanguage(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->primaryLanguageOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 271
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/TranslateController;->currentLanguage()Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_1
    const-string/jumbo p1, "nb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    const-string/jumbo p1, "no"

    return-object p1

    :cond_2
    return-object v0
.end method

.method public invalidateTranslation(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 780
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    .line 784
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/TranslateController;->isFeatureAvailable(J)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 787
    :cond_1
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 788
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 789
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedVoiceTranscription:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 790
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    .line 791
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->summaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 792
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 793
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedSummaryLanguage:Ljava/lang/String;

    .line 794
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v0, v1, v3}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 795
    new-instance v2, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;J)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isChatTranslateEnabled()Z
    .locals 3

    .line 115
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isTranslationsAutoEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->chatTranslateEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->messagesController:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "translate_chat_button"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->chatTranslateEnabled:Ljava/lang/Boolean;

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->chatTranslateEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isContextTranslateEnabled()Z
    .locals 4

    .line 125
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isTranslationsManualEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->contextTranslateEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->messagesController:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "translate_button"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController;->contextTranslateEnabled:Ljava/lang/Boolean;

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->contextTranslateEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDialogTranslatable(J)Z
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogs:Ljava/util/Set;

    .line 196
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isFeatureAvailable(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFeatureAvailable()Z
    .locals 1

    .line 97
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/TranslateController;->isChatTranslateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFeatureAvailable(J)Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/telegram/messenger/TranslateController;->isChatTranslateEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 105
    iget p2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    .line 106
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->autotranslation:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isTranslateDialogHidden(J)Z
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->hideTranslateDialogs:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 208
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->translations_disabled:Z

    return p1

    .line 212
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 214
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->translations_disabled:Z

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isTranslating(Lorg/telegram/messenger/MessageObject;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1505
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    if-eqz v2, :cond_0

    .line 1506
    iget-object v2, p0, Lorg/telegram/messenger/TranslateController;->loadingSummarizations:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v4, v5, v0

    const/4 v0, 0x2

    aput-object p1, v5, v0

    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1507
    :cond_0
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1508
    :try_start_0
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_2

    .line 1511
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    if-eqz v3, :cond_1

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    if-eqz v2, :cond_1

    .line 1512
    iget-object v2, p0, Lorg/telegram/messenger/TranslateController;->loadingTranscriptionTranslations:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    .line 1513
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1514
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    monitor-exit p0

    return v0

    .line 1516
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isTranslating(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1523
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1526
    :cond_1
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    if-eqz v3, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1527
    :goto_0
    monitor-enter p0

    if-eqz v1, :cond_3

    .line 1528
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/TranslateController;->loadingTranscriptionTranslations:Ljava/util/Set;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1529
    monitor-exit p0

    return v2

    :cond_4
    if-eqz p2, :cond_7

    .line 1532
    iget-object p1, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v3, v0

    :cond_5
    if-ge v3, p2, :cond_7

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_6

    .line 1533
    iget-object v5, p0, Lorg/telegram/messenger/TranslateController;->loadingTranscriptionTranslations:Ljava/util/Set;

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/TranslateController;->loadingTranslations:Ljava/util/Set;

    :goto_2
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1534
    monitor-exit p0

    return v2

    .line 1538
    :cond_7
    monitor-exit p0

    return v0

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isTranslatingDialog(J)Z
    .locals 2

    .line 228
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isFeatureAvailable(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isChatAutoTranslated(J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isTranslatingStory(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1859
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatingStories:Ljava/util/HashSet;

    new-instance v1, Lorg/telegram/messenger/TranslateController$StoryKey;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/TranslateController$StoryKey;-><init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    .line 886
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatableDialogMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 887
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->detectedDialogLanguage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public setChatTranslateEnabled(Z)V
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->messagesController:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/TranslateController;->chatTranslateEnabled:Ljava/lang/Boolean;

    const-string/jumbo v1, "translate_chat_button"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setContextTranslateEnabled(Z)V
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->messagesController:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/TranslateController;->contextTranslateEnabled:Ljava/lang/Boolean;

    const-string/jumbo v1, "translate_button"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDialogTranslateTo(JLjava/lang/String;)V
    .locals 3

    .line 281
    invoke-static {p3}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 282
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/TranslateController;JLjava/lang/String;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 298
    :cond_1
    monitor-enter p0

    .line 299
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translateDialogLanguage:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 303
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->cancelTranslations(J)V

    .line 304
    monitor-enter p0

    .line 305
    :try_start_1
    iget-object p3, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 306
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    iget p3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogTranslate:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    const/4 p1, 0x1

    aput-object v0, p2, p1

    invoke-virtual {p3, v1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 306
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 300
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public setHideTranslateDialog(JZ)V
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZZ)V

    return-void
.end method

.method public setHideTranslateDialog(JZZ)V
    .locals 3

    .line 348
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_togglePeerTranslations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_togglePeerTranslations;-><init>()V

    .line 349
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_togglePeerTranslations;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 350
    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_togglePeerTranslations;->disabled:Z

    .line 351
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 353
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 355
    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->translations_disabled:Z

    .line 356
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 358
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->translations_disabled:Z

    .line 361
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 364
    :cond_1
    monitor-enter p0

    if-eqz p3, :cond_2

    .line 366
    :try_start_0
    iget-object p3, p0, Lorg/telegram/messenger/TranslateController;->hideTranslateDialogs:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object p3, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 369
    :cond_2
    iget-object p3, p0, Lorg/telegram/messenger/TranslateController;->hideTranslateDialogs:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 371
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-direct {p0}, Lorg/telegram/messenger/TranslateController;->saveTranslatingDialogsCache()V

    if-nez p4, :cond_3

    .line 375
    iget p3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/NotificationCenter;->dialogTranslate:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p2, v2

    aput-object p1, p2, v1

    invoke-virtual {p3, p4, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 371
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toggleTranslatingDialog(J)V
    .locals 1

    .line 232
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/TranslateController;->toggleTranslatingDialog(JZ)Z

    return-void
.end method

.method public toggleTranslatingDialog(JZ)Z
    .locals 6

    .line 236
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    if-nez v0, :cond_0

    .line 238
    iget-object p3, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 239
    iget p3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->dialogTranslate:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v3

    aput-object v0, p2, v2

    invoke-virtual {p3, v4, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    .line 242
    iget-object p3, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 243
    iget p3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->dialogTranslate:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    aput-object v0, v1, v2

    invoke-virtual {p3, v4, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 244
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->cancelTranslations(J)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 247
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/TranslateController;->saveTranslatingDialogsCache()V

    return v2
.end method

.method public translatePhoto(Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;)V
    .locals 11

    if-eqz p1, :cond_4

    .line 1920
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1924
    :cond_0
    new-instance v5, Lorg/telegram/messenger/TranslateController$MessageKey;

    invoke-direct {v5, p1}, Lorg/telegram/messenger/TranslateController$MessageKey;-><init>(Lorg/telegram/messenger/MessageObject;)V

    .line 1926
    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1928
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_4

    .line 1930
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1934
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatingPhotos:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    .line 1936
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1941
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatingPhotos:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1943
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;-><init>()V

    .line 1944
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    .line 1945
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    .line 1946
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 1947
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iput-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1949
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    .line 1951
    :cond_3
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1952
    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->to_lang:Ljava/lang/String;

    .line 1953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1954
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v1, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda38;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$MessageKey;Ljava/lang/Runnable;JLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-virtual {v10, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public translateStory(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/Runnable;)V
    .locals 9

    if-nez p1, :cond_0

    goto :goto_0

    .line 1790
    :cond_0
    new-instance v4, Lorg/telegram/messenger/TranslateController$StoryKey;

    invoke-direct {v4, p1}, Lorg/telegram/messenger/TranslateController$StoryKey;-><init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1792
    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1794
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    .line 1796
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1800
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatingStories:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 1802
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void

    .line 1807
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->translatingStories:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1809
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;-><init>()V

    .line 1810
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    .line 1811
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    .line 1812
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 1813
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    .line 1814
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->to_lang:Ljava/lang/String;

    .line 1816
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda44;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-virtual {v8, v7, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public updateDialogFull(J)V
    .locals 5

    .line 311
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isFeatureAvailable(J)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isDialogTranslatable(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController;->hideTranslateDialogs:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 318
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 320
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->translations_disabled:Z

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 324
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->translations_disabled:Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 328
    :goto_0
    monitor-enter p0

    if-eqz v1, :cond_3

    .line 330
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/TranslateController;->hideTranslateDialogs:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v3, p0, Lorg/telegram/messenger/TranslateController;->translatingDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 333
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/TranslateController;->hideTranslateDialogs:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 335
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_4

    .line 338
    invoke-direct {p0}, Lorg/telegram/messenger/TranslateController;->saveTranslatingDialogsCache()V

    .line 339
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogTranslate:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v3, p2, v2

    const/4 v2, 0x1

    aput-object p1, p2, v2

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 335
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_3
    return-void
.end method
