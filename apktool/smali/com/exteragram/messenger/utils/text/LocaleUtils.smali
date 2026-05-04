.class public abstract Lcom/exteragram/messenger/utils/text/LocaleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FILTRATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEX_PATTERN:Ljava/util/regex/Pattern;

.field private static final MARKDOWN_LINK_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const-string v0, "\\p{Mn}{3,}|[\u202a-\u202e\u2066-\u2069\u200e\u200f\u061c]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/utils/text/LocaleUtils;->FILTRATION_PATTERN:Ljava/util/regex/Pattern;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\[([^]]+?)]\\("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/telegram/messenger/LinkifyPort;->WEB_URL_REGEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/utils/text/LocaleUtils;->MARKDOWN_LINK_PATTERN:Ljava/util/regex/Pattern;

    .line 65
    const-string v0, "(?<![a-zA-Z0-9])#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{8})(?![a-zA-Z0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/utils/text/LocaleUtils;->HEX_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    if-nez p0, :cond_0

    .line 338
    const-string p0, ""

    .line 339
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 340
    const-string p0, "  d"

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 341
    new-instance p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;-><init>(F)V

    .line 342
    const-string v1, "NEW"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setText(Ljava/lang/CharSequence;)V

    .line 343
    const-string v1, "fonts/num.otf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setColor(I)V

    .line 345
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setTextColor(I)V

    .line 346
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private static canFilter(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 245
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->filterZalgo:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/exteragram/messenger/utils/text/LocaleUtils;->FILTRATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static canUseLocalPremiumEmojis()Z
    .locals 1

    .line 462
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canUseLocalPremiumEmojis(I)Z

    move-result v0

    return v0
.end method

.method public static canUseLocalPremiumEmojis(I)Z
    .locals 2

    .line 466
    const-string/jumbo v0, "local_premium_emojis"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getBooleanConfigValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 226
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    if-nez v0, :cond_1

    .line 228
    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, p0, v0

    goto :goto_1

    .line 229
    :cond_1
    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, p0, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static createCopySpan(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/text/Spannable;
    .locals 4

    .line 470
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " "

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 471
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 472
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p0

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 p0, 0x41b00000    # 22.0f

    .line 473
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 474
    new-instance p0, Landroid/text/style/ImageSpan;

    invoke-direct {p0, v1, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v1, 0x1

    const/16 v2, 0x21

    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static ensureUrlHasHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 352
    :cond_0
    sget-object v0, Lorg/telegram/messenger/LinkifyPort;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 354
    const-string v1, "://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static filter(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 275
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 279
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canFilter(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    sget-object v0, Lcom/exteragram/messenger/utils/text/LocaleUtils;->FILTRATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 284
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1, p0, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_0

    const/16 v5, 0x2060

    .line 288
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 290
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static filterSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10

    .line 249
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canFilter(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 253
    :cond_0
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_5

    check-cast p0, Landroid/text/Spannable;

    .line 257
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 258
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 260
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 261
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 262
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 263
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    if-gez v6, :cond_1

    move v6, v3

    .line 266
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v7, v9, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    :cond_2
    if-le v6, v7, :cond_3

    move v6, v7

    .line 269
    :cond_3
    invoke-interface {v0, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    .line 254
    :cond_5
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->filter(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatWithHtmlURLs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 142
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 143
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/URLSpan;

    .line 144
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 146
    array-length v0, p0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 147
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 148
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 149
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 152
    new-instance v3, Lcom/exteragram/messenger/utils/text/LocaleUtils$2;

    invoke-direct {v3, v6}, Lcom/exteragram/messenger/utils/text/LocaleUtils$2;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x21

    .line 158
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static formatWithURLs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 164
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 168
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    sget-object v1, Lorg/telegram/messenger/LinkifyPort;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 171
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :try_start_0
    new-instance v1, Lcom/exteragram/messenger/utils/text/LocaleUtils$3;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->ensureUrlHasHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/utils/text/LocaleUtils$3;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 181
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static formatWithUsernames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 86
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->formatWithUsernames(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/BaseFragment;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static formatWithUsernames(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/BaseFragment;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-static {p0, p1, v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->formatWithUsernames(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static formatWithUsernames(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)Ljava/lang/CharSequence;
    .locals 7

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 97
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    .line 100
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 101
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-ne v4, v5, :cond_1

    move v3, v2

    goto :goto_2

    :cond_1
    if-eq v3, v1, :cond_5

    add-int/lit8 v4, v2, 0x1

    .line 104
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 105
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-eq v5, v6, :cond_5

    :cond_2
    sub-int v5, v4, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 108
    const-class v5, Landroid/text/style/URLSpan;

    invoke-virtual {v0, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    if-eqz v5, :cond_4

    .line 109
    array-length v5, v5

    if-lez v5, :cond_4

    :cond_3
    :goto_1
    move v3, v1

    goto :goto_2

    .line 113
    :cond_4
    invoke-interface {p0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 115
    :try_start_0
    new-instance v6, Lcom/exteragram/messenger/utils/text/LocaleUtils$1;

    invoke-direct {v6, v5, p2, p1, v5}, Lcom/exteragram/messenger/utils/text/LocaleUtils$1;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    const/16 v5, 0x21

    .line 126
    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 128
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 215
    new-instance v0, Landroid/text/SpannableString;

    .line 216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 217
    invoke-static {p0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static fullyFormatText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-static {p0, v0, v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->fullyFormatText(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static fullyFormatText(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)Ljava/lang/CharSequence;
    .locals 2

    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 197
    :cond_0
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->formatWithURLs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x1

    .line 199
    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 200
    invoke-static {v0, p2}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->parseMarkdownLinks([Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    .line 201
    aget-object p0, v0, v1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 204
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->formatWithUsernames(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->formatWithUsernames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 209
    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getActionBarTitle()Ljava/lang/String;
    .locals 1

    .line 68
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->getActionBarTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActionBarTitle(I)Ljava/lang/String;
    .locals 2

    .line 73
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->titleText:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 78
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 79
    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 76
    :cond_1
    sget p0, Lorg/telegram/messenger/R$string;->FilterChats:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->exteraAppName:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 2

    .line 238
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$string;->exteraAppName:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 240
    :catch_0
    const-string v0, "exteraGram"

    return-object v0
.end method

.method public static insertHexColorsPreview(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    .line 479
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 482
    :cond_0
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/text/Spannable;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    .line 484
    :goto_0
    sget-object v0, Lcom/exteragram/messenger/utils/text/LocaleUtils;->HEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 485
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 486
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 487
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 489
    const-class v3, Ljava/lang/Object;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 491
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 492
    instance-of v7, v6, Lcom/exteragram/messenger/utils/ui/ColorRectSpan;

    if-eqz v7, :cond_3

    goto :goto_3

    .line 495
    :cond_3
    invoke-interface {p0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 496
    invoke-interface {p0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-le v7, v1, :cond_4

    if-lt v7, v2, :cond_2

    :cond_4
    if-le v6, v1, :cond_5

    if-ge v6, v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 508
    :cond_6
    :try_start_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 509
    new-instance v3, Lcom/exteragram/messenger/utils/ui/ColorRectSpan;

    invoke-direct {v3, v1}, Lcom/exteragram/messenger/utils/ui/ColorRectSpan;-><init>(I)V

    add-int/lit8 v1, v2, -0x1

    const/16 v4, 0x21

    invoke-interface {p0, v3, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 511
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HEX color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_4
    return-object p0
.end method

.method public static parseCustomEmojis(Ljava/lang/CharSequence;Ljava/util/ArrayList;J)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 365
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 370
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v0

    move v3, v2

    move v4, v3

    .line 373
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 374
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 376
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-eqz v6, :cond_3

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    .line 377
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    if-eqz v6, :cond_3

    const-string/jumbo v7, "tg://emoji?id="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 379
    :try_start_0
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 380
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 382
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-ltz v8, :cond_3

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    if-lez v9, :cond_3

    add-int/2addr v8, v9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v8, 0x1

    .line 386
    new-array v9, v8, [I

    .line 387
    iget v10, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v11, v10

    invoke-interface {p0, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;

    move-result-object v10

    .line 389
    aget v9, v9, v0

    if-lez v9, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v8, :cond_3

    .line 390
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 391
    iput-wide v6, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 392
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iput v6, v9, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 393
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iput v6, v9, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 394
    iput-boolean v8, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->local:Z

    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-lez v6, :cond_2

    .line 397
    invoke-virtual {p1, v2, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :cond_2
    add-int v6, v2, v4

    .line 399
    invoke-virtual {p1, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    :goto_1
    move v3, v8

    goto :goto_3

    .line 406
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse custom emoji id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return v3

    :cond_5
    :goto_4
    return v0
.end method

.method public static parseMarkdownLinks([Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 299
    invoke-static {p0, v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->parseMarkdownLinks([Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static parseMarkdownLinks([Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 9

    if-eqz p0, :cond_4

    .line 303
    array-length v0, p0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 306
    :cond_0
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/text/Spannable;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    .line 307
    :goto_0
    sget-object v2, Lcom/exteragram/messenger/utils/text/LocaleUtils;->MARKDOWN_LINK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 308
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 310
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 311
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    .line 312
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    if-ltz v6, :cond_2

    if-ltz v5, :cond_2

    if-gt v6, v5, :cond_2

    .line 313
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v5, v7, :cond_2

    .line 314
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v7, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 315
    new-instance v5, Lcom/exteragram/messenger/utils/text/LocaleUtils$4;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->ensureUrlHasHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lcom/exteragram/messenger/utils/text/LocaleUtils$4;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 324
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v8, 0x21

    invoke-virtual {v7, v5, v0, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 325
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 330
    aget-object p1, p0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 331
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 332
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 330
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_4
    :goto_2
    return-void
.end method

.method public static replaceCustomEmojis(IJLjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 416
    invoke-static {p0, p1, p2, p3, v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->replaceCustomEmojis(IJLjava/util/ArrayList;Z)V

    return-void
.end method

.method public static replaceCustomEmojis(IJLjava/util/ArrayList;Z)V
    .locals 4

    .line 420
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canUseLocalPremiumEmojis(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_7

    :cond_0
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const-wide/16 v0, 0x0

    if-nez p4, :cond_2

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 425
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 430
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    if-nez p4, :cond_3

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    .line 432
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 433
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->emojiset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_3

    .line 434
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->emojiset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaDataController;->getGroupStickerSetById(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 435
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz p0, :cond_3

    .line 436
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v3

    :goto_0
    if-ge p2, p1, :cond_3

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 437
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    :cond_3
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v3, p0, :cond_7

    .line 444
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 445
    instance-of p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    if-eqz p1, :cond_6

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    if-eqz p4, :cond_4

    .line 446
    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->local:Z

    if-nez p1, :cond_4

    goto :goto_2

    .line 449
    :cond_4
    iget-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 452
    :cond_5
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 453
    iget p2, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 454
    iget p2, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 455
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tg://emoji?id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 456
    invoke-virtual {p3, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method
