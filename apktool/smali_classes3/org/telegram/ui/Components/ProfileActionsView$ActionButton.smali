.class public final enum Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ProfileActionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionButton"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum CALL:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum DISCUSS:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum EDIT_INFO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum EDIT_USERNAME:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum GIFT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum JOIN:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum LEAVE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum MESSAGE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum NOTIFICATION_MUTE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum NOTIFICATION_UNMUTE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum REPORT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum SETTINGS:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum SET_PHOTO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum SHARE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum STOP:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum STORY:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum STREAM:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum VIDEO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

.field public static final enum VOICE_CHAT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;


# instance fields
.field final filledIcon:I

.field final outlineIcon:I

.field final title:I


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;
    .locals 3

    const/16 v0, 0x13

    .line 1283
    new-array v0, v0, [Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->MESSAGE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->NOTIFICATION_MUTE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->NOTIFICATION_UNMUTE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->DISCUSS:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->GIFT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->SHARE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->CALL:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->VIDEO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->JOIN:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->REPORT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->LEAVE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->VOICE_CHAT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->STREAM:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->STORY:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->STOP:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->SET_PHOTO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->EDIT_USERNAME:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->EDIT_INFO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->SETTINGS:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 1284
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v3, Lorg/telegram/messenger/R$string;->ProfileActionsMessage:I

    sget v4, Lorg/telegram/messenger/R$drawable;->filled_profile_message_24:I

    sget v5, Lorg/telegram/messenger/R$drawable;->outline_profile_message_24:I

    const-string v1, "MESSAGE"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->MESSAGE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1285
    new-instance v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v4, Lorg/telegram/messenger/R$string;->ProfileButtonMute:I

    sget v5, Lorg/telegram/messenger/R$drawable;->filled_profile_mute_24:I

    sget v6, Lorg/telegram/messenger/R$drawable;->outline_profile_mute_24:I

    const-string v2, "NOTIFICATION_MUTE"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->NOTIFICATION_MUTE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1286
    new-instance v2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v5, Lorg/telegram/messenger/R$string;->ProfileButtonUnmute:I

    sget v6, Lorg/telegram/messenger/R$drawable;->filled_profile_unmute_24:I

    sget v7, Lorg/telegram/messenger/R$drawable;->outline_profile_unmute_24:I

    const-string v3, "NOTIFICATION_UNMUTE"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->NOTIFICATION_UNMUTE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1287
    new-instance v3, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v6, Lorg/telegram/messenger/R$string;->ProfileActionsDiscuss:I

    sget v7, Lorg/telegram/messenger/R$drawable;->filled_profile_message_24:I

    sget v8, Lorg/telegram/messenger/R$drawable;->outline_profile_message_24:I

    const-string v4, "DISCUSS"

    const/4 v5, 0x3

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->DISCUSS:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1288
    new-instance v4, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v7, Lorg/telegram/messenger/R$string;->ProfileActionsGift:I

    sget v8, Lorg/telegram/messenger/R$drawable;->gift:I

    sget v9, Lorg/telegram/messenger/R$drawable;->input_gift_s:I

    const-string v5, "GIFT"

    const/4 v6, 0x4

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->GIFT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1289
    new-instance v5, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v8, Lorg/telegram/messenger/R$string;->ProfileActionsShare:I

    sget v9, Lorg/telegram/messenger/R$drawable;->action_share:I

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_share:I

    const-string v6, "SHARE"

    const/4 v7, 0x5

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->SHARE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1290
    new-instance v6, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v9, Lorg/telegram/messenger/R$string;->ProfileActionsCall:I

    sget v10, Lorg/telegram/messenger/R$drawable;->filled_profile_call_24:I

    sget v11, Lorg/telegram/messenger/R$drawable;->outline_profile_call_24:I

    const-string v7, "CALL"

    const/4 v8, 0x6

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->CALL:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1291
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v3, Lorg/telegram/messenger/R$string;->ProfileActionsVideo:I

    sget v4, Lorg/telegram/messenger/R$drawable;->filled_profile_video_24:I

    sget v5, Lorg/telegram/messenger/R$drawable;->outline_profile_video_24:I

    const-string v1, "VIDEO"

    const/4 v2, 0x7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->VIDEO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1292
    new-instance v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v4, Lorg/telegram/messenger/R$string;->ProfileActionsJoin:I

    sget v5, Lorg/telegram/messenger/R$drawable;->filled_profile_member_24:I

    sget v6, Lorg/telegram/messenger/R$drawable;->outline_profile_member_24:I

    const-string v2, "JOIN"

    const/16 v3, 0x8

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->JOIN:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1293
    new-instance v2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v5, Lorg/telegram/messenger/R$string;->ProfileActionsReport:I

    sget v6, Lorg/telegram/messenger/R$drawable;->report:I

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_report:I

    const-string v3, "REPORT"

    const/16 v4, 0x9

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->REPORT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1294
    new-instance v3, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v6, Lorg/telegram/messenger/R$string;->ProfileActionsLeave:I

    sget v7, Lorg/telegram/messenger/R$drawable;->leave:I

    const-string v4, "LEAVE"

    const/16 v5, 0xa

    move v8, v7

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->LEAVE:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1295
    new-instance v4, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v7, Lorg/telegram/messenger/R$string;->ProfileActionsVoiceChat:I

    sget v8, Lorg/telegram/messenger/R$drawable;->live_stream:I

    const-string v5, "VOICE_CHAT"

    const/16 v6, 0xb

    move v9, v8

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->VOICE_CHAT:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1296
    new-instance v5, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v8, Lorg/telegram/messenger/R$string;->ProfileActionsLiveStream:I

    sget v9, Lorg/telegram/messenger/R$drawable;->live_stream:I

    const-string v6, "STREAM"

    const/16 v7, 0xc

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->STREAM:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1297
    new-instance v6, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v9, Lorg/telegram/messenger/R$string;->ProfileActionsAddStory:I

    sget v10, Lorg/telegram/messenger/R$drawable;->filled_profile_story:I

    sget v11, Lorg/telegram/messenger/R$drawable;->outline_profile_story:I

    const-string v7, "STORY"

    const/16 v8, 0xd

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->STORY:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1298
    new-instance v0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v3, Lorg/telegram/messenger/R$string;->ProfileActionsStop:I

    sget v4, Lorg/telegram/messenger/R$drawable;->filled_profile_stop_24:I

    sget v5, Lorg/telegram/messenger/R$drawable;->outline_profile_stop_24:I

    const-string v1, "STOP"

    const/16 v2, 0xe

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->STOP:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1299
    new-instance v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v4, Lorg/telegram/messenger/R$string;->ProfileActionsEditPhoto2:I

    sget v5, Lorg/telegram/messenger/R$drawable;->filled_profile_photo:I

    sget v6, Lorg/telegram/messenger/R$drawable;->outline_profile_photo:I

    const-string v2, "SET_PHOTO"

    const/16 v3, 0xf

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->SET_PHOTO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1300
    new-instance v2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v5, Lorg/telegram/messenger/R$string;->ProfileActionsEditUsername:I

    sget v6, Lorg/telegram/messenger/R$drawable;->filled_profile_edit_24:I

    sget v7, Lorg/telegram/messenger/R$drawable;->outline_profile_edit_24:I

    const-string v3, "EDIT_USERNAME"

    const/16 v4, 0x10

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->EDIT_USERNAME:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1301
    new-instance v3, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v6, Lorg/telegram/messenger/R$string;->ProfileActionsEditInfo:I

    sget v7, Lorg/telegram/messenger/R$drawable;->filled_profile_edit_24:I

    sget v8, Lorg/telegram/messenger/R$drawable;->outline_profile_edit_24:I

    const-string v4, "EDIT_INFO"

    const/16 v5, 0x11

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->EDIT_INFO:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1302
    new-instance v4, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    sget v7, Lorg/telegram/messenger/R$string;->Settings:I

    sget v8, Lorg/telegram/messenger/R$drawable;->filled_profile_settings:I

    sget v9, Lorg/telegram/messenger/R$drawable;->outline_profile_settings:I

    const-string v5, "SETTINGS"

    const/16 v6, 0x12

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->SETTINGS:Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    .line 1283
    invoke-static {}, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->$values()[Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->$VALUES:[Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1309
    iput p3, p0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->title:I

    .line 1310
    iput p4, p0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->filledIcon:I

    .line 1311
    iput p5, p0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->outlineIcon:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;
    .locals 1

    .line 1283
    const-class v0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;
    .locals 1

    .line 1283
    sget-object v0, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->$VALUES:[Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;

    return-object v0
.end method
