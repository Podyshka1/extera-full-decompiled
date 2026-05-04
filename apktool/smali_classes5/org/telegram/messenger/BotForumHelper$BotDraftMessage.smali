.class Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/BotForumHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BotDraftMessage"
.end annotation


# instance fields
.field public final localMessageId:I

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field public final randomId:J

.field private selfDestruct:Ljava/lang/Runnable;

.field private text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public final topicId:I

.field public final userId:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmessageObject(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselfDestruct(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->selfDestruct:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettext(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmessageObject(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselfDestruct(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->selfDestruct:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtext(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    return-void
.end method

.method private constructor <init>(JIJI)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-wide p1, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->userId:J

    .line 158
    iput p3, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->topicId:I

    .line 159
    iput-wide p4, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->randomId:J

    .line 160
    iput p6, p0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->localMessageId:I

    return-void
.end method

.method synthetic constructor <init>(JIJILorg/telegram/messenger/BotForumHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;-><init>(JIJI)V

    return-void
.end method
