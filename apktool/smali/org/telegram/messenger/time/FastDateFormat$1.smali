.class Lorg/telegram/messenger/time/FastDateFormat$1;
.super Lorg/telegram/messenger/time/FormatCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/time/FormatCache<",
        "Lorg/telegram/messenger/time/FastDateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/telegram/messenger/time/FormatCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/time/FastDateFormat$1;->createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p1

    return-object p1
.end method

.method protected createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;
    .locals 1

    .line 91
    new-instance v0, Lorg/telegram/messenger/time/FastDateFormat;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/messenger/time/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method
