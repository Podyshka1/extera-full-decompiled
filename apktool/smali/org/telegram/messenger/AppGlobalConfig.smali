.class public Lorg/telegram/messenger/AppGlobalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigString;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;
    }
.end annotation


# instance fields
.field public final contactNoteLengthLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final disableBlurInDarkTheme:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

.field public final disableBlurInLightTheme:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

.field public final groupCallMessageLengthLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final groupCallMessageTtl:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;",
            ">;"
        }
    .end annotation
.end field

.field public final messageTypingDraftTtl:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

.field public final needAgeVideoVerification:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

.field public final noForwardsRequestExpirePeriod:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

.field public final passkeysAccountPasskeysMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final settingsDisplayPasskeys:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

.field public final stargiftsCollectionGiftsLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final stargiftsCollectionsLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsPaidMessagesChannelAmountDefault:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsRatingLearnMoreUrl:Lorg/telegram/messenger/AppGlobalConfig$ConfigString;

.field public final starsStarGiftResaleAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsStarGiftResaleAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsStarGiftResaleCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsSuggestedPostAgeMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

.field public final starsSuggestedPostAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsSuggestedPostAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsSuggestedPostCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsSuggestedPostFutureMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

.field public final starsSuggestedPostFutureMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

.field public final storiesAlbumStoriesLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final storiesAlbumsLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final tonStarGiftResaleAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

.field public final tonStarGiftResaleAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

.field public final tonStarGiftResaleCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final tonSuggestedPostAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

.field public final tonSuggestedPostAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

.field public final tonSuggestedPostCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final tonUsdRate:Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    .line 14
    const-string/jumbo v0, "stars_paid_messages_channel_amount_default"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsPaidMessagesChannelAmountDefault:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 16
    const-string/jumbo v0, "stars_suggested_post_commission_permille"

    const/16 v1, 0x352

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 17
    const-string/jumbo v0, "stars_suggested_post_amount_min"

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 18
    const-string/jumbo v0, "stars_suggested_post_amount_max"

    const v3, 0x186a0

    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 20
    const-string/jumbo v0, "ton_suggested_post_commission_permille"

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->tonSuggestedPostCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 21
    const-string/jumbo v0, "ton_suggested_post_amount_min"

    const-wide/32 v3, 0x989680

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/AppGlobalConfig;->ofLong(Ljava/lang/String;J)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->tonSuggestedPostAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    .line 22
    const-string/jumbo v0, "ton_suggested_post_amount_max"

    const-wide v5, 0x9184e72a000L

    invoke-direct {p0, v0, v5, v6}, Lorg/telegram/messenger/AppGlobalConfig;->ofLong(Ljava/lang/String;J)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->tonSuggestedPostAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v1, "stars_suggested_post_age_min"

    const-wide/32 v7, 0x15180

    invoke-direct {p0, v1, v7, v8, v0}, Lorg/telegram/messenger/AppGlobalConfig;->ofTime(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostAgeMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    .line 25
    const-string/jumbo v1, "stars_suggested_post_future_min"

    const-wide/16 v9, 0x12c

    invoke-direct {p0, v1, v9, v10, v0}, Lorg/telegram/messenger/AppGlobalConfig;->ofTime(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostFutureMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    .line 26
    const-string/jumbo v1, "stars_suggested_post_future_max"

    const-wide/32 v9, 0x28de80

    invoke-direct {p0, v1, v9, v10, v0}, Lorg/telegram/messenger/AppGlobalConfig;->ofTime(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostFutureMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    .line 28
    const-string/jumbo v1, "ton_usd_rate"

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    invoke-direct {p0, v1, v9, v10}, Lorg/telegram/messenger/AppGlobalConfig;->ofDouble(Ljava/lang/String;D)Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->tonUsdRate:Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;

    .line 30
    const-string/jumbo v1, "stars_rating_learnmore_url"

    const-string v9, "https://telegram.org/blog/telegram-stars"

    invoke-direct {p0, v1, v9}, Lorg/telegram/messenger/AppGlobalConfig;->ofString(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/AppGlobalConfig$ConfigString;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsRatingLearnMoreUrl:Lorg/telegram/messenger/AppGlobalConfig$ConfigString;

    .line 31
    const-string/jumbo v1, "need_age_video_verification"

    const/4 v9, 0x0

    invoke-direct {p0, v1, v9}, Lorg/telegram/messenger/AppGlobalConfig;->ofBoolean(Ljava/lang/String;Z)Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->needAgeVideoVerification:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    .line 33
    const-string/jumbo v1, "stars_stargift_resale_commission_permille"

    const/16 v10, 0x320

    invoke-direct {p0, v1, v10}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsStarGiftResaleCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 34
    const-string/jumbo v1, "ton_stargift_resale_commission_permille"

    invoke-direct {p0, v1, v10}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->tonStarGiftResaleCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 35
    const-string/jumbo v1, "stars_stargift_resale_amount_min"

    const/16 v10, 0x7d

    invoke-direct {p0, v1, v10}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsStarGiftResaleAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 36
    const-string/jumbo v1, "stars_stargift_resale_amount_max"

    const v10, 0x88b8

    invoke-direct {p0, v1, v10}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsStarGiftResaleAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 37
    const-string/jumbo v1, "ton_stargift_resale_amount_min"

    invoke-direct {p0, v1, v3, v4}, Lorg/telegram/messenger/AppGlobalConfig;->ofLong(Ljava/lang/String;J)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->tonStarGiftResaleAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    .line 38
    const-string/jumbo v1, "ton_stargift_resale_amount_max"

    invoke-direct {p0, v1, v5, v6}, Lorg/telegram/messenger/AppGlobalConfig;->ofLong(Ljava/lang/String;J)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->tonStarGiftResaleAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    .line 40
    const-string/jumbo v1, "stargifts_collections_limit"

    const/16 v3, 0x64

    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->stargiftsCollectionsLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 41
    const-string/jumbo v1, "stargifts_collection_gifts_limit"

    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->stargiftsCollectionGiftsLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 42
    const-string/jumbo v1, "stories_albums_limit"

    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->storiesAlbumsLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 43
    const-string/jumbo v1, "stories_album_stories_limit"

    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->storiesAlbumStoriesLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 45
    const-string/jumbo v1, "message_typing_draft_ttl"

    const-wide/16 v3, 0x1e

    invoke-direct {p0, v1, v3, v4, v0}, Lorg/telegram/messenger/AppGlobalConfig;->ofTime(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->messageTypingDraftTtl:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    .line 47
    const-string v1, "group_call_message_ttl"

    const-wide/16 v3, 0xa

    invoke-direct {p0, v1, v3, v4, v0}, Lorg/telegram/messenger/AppGlobalConfig;->ofTime(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->groupCallMessageTtl:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    .line 48
    const-string v1, "group_call_message_length_limit"

    const/16 v3, 0x80

    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->groupCallMessageLengthLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 50
    const-string v1, "contact_note_length_limit"

    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->contactNoteLengthLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 52
    const-string/jumbo v1, "passkeys_account_passkeys_max"

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->passkeysAccountPasskeysMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    .line 54
    const-string/jumbo v1, "settings_display_passkeys"

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/AppGlobalConfig;->ofBoolean(Ljava/lang/String;Z)Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->settingsDisplayPasskeys:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    .line 56
    const-string v1, "android_disable_blur_in_light_theme"

    invoke-direct {p0, v1, v9}, Lorg/telegram/messenger/AppGlobalConfig;->ofBoolean(Ljava/lang/String;Z)Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->disableBlurInLightTheme:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    .line 57
    const-string v1, "android_disable_blur_in_dark_theme"

    invoke-direct {p0, v1, v9}, Lorg/telegram/messenger/AppGlobalConfig;->ofBoolean(Ljava/lang/String;Z)Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->disableBlurInDarkTheme:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    .line 59
    const-string/jumbo v1, "no_forwards_request_expire_period"

    invoke-direct {p0, v1, v7, v8, v0}, Lorg/telegram/messenger/AppGlobalConfig;->ofTime(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->noForwardsRequestExpirePeriod:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    return-void
.end method

.method private ofBoolean(Ljava/lang/String;Z)Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;
    .locals 2

    .line 343
    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;-><init>(Ljava/lang/String;ZLorg/telegram/messenger/AppGlobalConfig-IA;)V

    .line 344
    iget-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;->-$$Nest$fgethandler(Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;)Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private ofDouble(Ljava/lang/String;D)Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;
    .locals 2

    .line 336
    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;-><init>(Ljava/lang/String;DLorg/telegram/messenger/AppGlobalConfig-IA;)V

    .line 337
    iget-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;->-$$Nest$fgethandler(Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;)Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble$Internal;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;
    .locals 2

    .line 322
    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;-><init>(Ljava/lang/String;ILorg/telegram/messenger/AppGlobalConfig-IA;)V

    .line 323
    iget-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->-$$Nest$fgethandler(Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private ofLong(Ljava/lang/String;J)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;
    .locals 2

    .line 329
    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;-><init>(Ljava/lang/String;JLorg/telegram/messenger/AppGlobalConfig-IA;)V

    .line 330
    iget-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;->-$$Nest$fgethandler(Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private ofString(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/AppGlobalConfig$ConfigString;
    .locals 2

    .line 350
    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigString;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/AppGlobalConfig-IA;)V

    .line 351
    iget-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigString;->-$$Nest$fgethandler(Lorg/telegram/messenger/AppGlobalConfig$ConfigString;)Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private ofTime(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;
    .locals 6

    .line 357
    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    const/4 v5, 0x0

    move-object v1, p1

    move-wide v3, p2

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;JLorg/telegram/messenger/AppGlobalConfig-IA;)V

    .line 358
    iget-object p1, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->-$$Nest$fgethandler(Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLRPC$TL_jsonObject;)Z
    .locals 6

    .line 66
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 67
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    .line 68
    iget-object v4, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;

    if-nez v4, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    invoke-interface {v4, p1, v3}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;->apply(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLRPC$JSONValue;)Z

    move-result v3

    or-int/2addr v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public load(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;

    .line 82
    :try_start_0
    invoke-interface {v1, p1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;->load(Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 84
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
