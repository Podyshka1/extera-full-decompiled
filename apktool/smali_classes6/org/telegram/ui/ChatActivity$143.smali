.class abstract synthetic Lorg/telegram/ui/ChatActivity$143;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39296
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->values()[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/ui/ChatActivity$143;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    :try_start_0
    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_PROFILE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/telegram/ui/ChatActivity$143;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->MENTION:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/telegram/ui/ChatActivity$143;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEARCH_MESSAGES:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/telegram/ui/ChatActivity$143;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_GROUP:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/telegram/ui/ChatActivity$143;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_CHANNEL:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/telegram/ui/ChatActivity$143;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEND_MESSAGE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
