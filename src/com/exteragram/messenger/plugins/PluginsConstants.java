package com.exteragram.messenger.plugins;

import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\b\u0007\u0018\u0000 \u00042\u00020\u0001:\b\u0004\u0005\u0006\u0007\b\t\n\u000bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsConstants;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "Settings", "Strategy", "Xposed", "DevServer", "MenuItemTypes", "MenuItemProperties", "HookFilterTypes", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class PluginsConstants {
    public static final String PYTHON = Deobfuscator$exteraGramDev$TMessagesProj.getString(-71603416483375L);
    public static final String SEND_MESSAGE_HOOK = Deobfuscator$exteraGramDev$TMessagesProj.getString(-71556171843119L);
    public static final String STRATEGY = Deobfuscator$exteraGramDev$TMessagesProj.getString(-71633481254447L);
    public static final String PARAMS = Deobfuscator$exteraGramDev$TMessagesProj.getString(-71680725894703L);
    public static final String UPDATE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-71702200731183L);
    public static final String UPDATES = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72359330727471L);
    public static final String REQUEST = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72324970989103L);
    public static final String RESPONSE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72428050204207L);
    public static final String ERROR = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72389395498543L);
    public static final String PLUGINS = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72483884779055L);
    public static final String PLUGINS_EXT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72449525040687L);
    public static final String PLUGINS_SDK = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72552604255791L);
    public static final String CREATE_SETTINGS = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72054388049455L);
    public static final String APP_START = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72123107526191L);
    public static final String APP_STOP = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72097337722415L);
    public static final String APP_PAUSE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72213301839407L);
    public static final String APP_RESUME = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72187532035631L);
    public static final String ON_APP_EVENT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-72226186741295L);
    public static final String ON_PLUGIN_LOAD = Deobfuscator$exteraGramDev$TMessagesProj.getString(-70710063285807L);
    public static final String ON_PLUGIN_UNLOAD = Deobfuscator$exteraGramDev$TMessagesProj.getString(-70765897860655L);

    private PluginsConstants() {
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsConstants$Settings;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Settings {
        public static final String TYPE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-56910333363759L);
        public static final String KEY = Deobfuscator$exteraGramDev$TMessagesProj.getString(-57009117611567L);
        public static final String TEXT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-57026297480751L);
        public static final String SUBTEXT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-56970462905903L);
        public static final String ICON = Deobfuscator$exteraGramDev$TMessagesProj.getString(-57073542121007L);
        public static final String ACCENT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-57103606892079L);
        public static final String RED = Deobfuscator$exteraGramDev$TMessagesProj.getString(-57056362251823L);
        public static final String ON_CLICK = Deobfuscator$exteraGramDev$TMessagesProj.getString(-57142261597743L);
        public static final String DEFAULT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-57120786761263L);
        public static final String ITEMS = Deobfuscator$exteraGramDev$TMessagesProj.getString(-56674110162479L);
        public static final String HINT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-56631160489519L);
        public static final String MULTILINE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-56644045391407L);
        public static final String MAX_LENGTH = Deobfuscator$exteraGramDev$TMessagesProj.getString(-56755714541103L);
        public static final String MASK = Deobfuscator$exteraGramDev$TMessagesProj.getString(-56811549115951L);
        public static final String ON_CHANGE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-56824434017839L);
        public static final String TYPE_SWITCH = Deobfuscator$exteraGramDev$TMessagesProj.getString(-56867383690799L);
        public static final String TYPE_INPUT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-56837318919727L);
        public static final String TYPE_SELECTOR = Deobfuscator$exteraGramDev$TMessagesProj.getString(-56863088723503L);
        public static final String TYPE_HEADER = Deobfuscator$exteraGramDev$TMessagesProj.getString(-55312605529647L);
        public static final String TYPE_DIVIDER = Deobfuscator$exteraGramDev$TMessagesProj.getString(-55282540758575L);
        public static final String TYPE_TEXT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-55385619973679L);
        public static final String TYPE_EDIT_TEXT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-55329785398831L);
        public static final String TYPE_CUSTOM = Deobfuscator$exteraGramDev$TMessagesProj.getString(-55441454548527L);
        public static final String VIEW = Deobfuscator$exteraGramDev$TMessagesProj.getString(-55411389777455L);
        public static final String ITEM = Deobfuscator$exteraGramDev$TMessagesProj.getString(-55492994156079L);
        public static final String FACTORY = Deobfuscator$exteraGramDev$TMessagesProj.getString(-55523058927151L);
        public static final String FACTORY_ARGS = Deobfuscator$exteraGramDev$TMessagesProj.getString(-55488699188783L);
        public static final String CREATE_SUB_FRAGMENT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-54986188015151L);
        public static final String ON_LONG_CLICK = Deobfuscator$exteraGramDev$TMessagesProj.getString(-55072087361071L);
        public static final String LINK_ALIAS = Deobfuscator$exteraGramDev$TMessagesProj.getString(-55132216903215L);

        private Settings() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsConstants$Strategy;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Strategy {
        public static final String MODIFY = Deobfuscator$exteraGramDev$TMessagesProj.getString(-70847502239279L);
        public static final String CANCEL = Deobfuscator$exteraGramDev$TMessagesProj.getString(-70800257599023L);
        public static final String DEFAULT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-70907631781423L);
        public static final String MODIFY_FINAL = Deobfuscator$exteraGramDev$TMessagesProj.getString(-70873272043055L);

        private Strategy() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsConstants$Xposed;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Xposed {
        public static final String REPLACE_HOOKED_METHOD = Deobfuscator$exteraGramDev$TMessagesProj.getString(-104253757867567L);
        public static final String BEFORE_HOOKED_METHOD = Deobfuscator$exteraGramDev$TMessagesProj.getString(-104348247148079L);
        public static final String AFTER_HOOKED_METHOD = Deobfuscator$exteraGramDev$TMessagesProj.getString(-103948815189551L);
        public static final String HOOK_FILTERS = Deobfuscator$exteraGramDev$TMessagesProj.getString(-104034714535471L);

        private Xposed() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsConstants$DevServer;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class DevServer {
        public static final String MODULE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-103785606432303L);
        public static final String CLASS = Deobfuscator$exteraGramDev$TMessagesProj.getString(-103841441007151L);
        public static final String START_SERVER = Deobfuscator$exteraGramDev$TMessagesProj.getString(-103403354342959L);
        public static final String STOP_SERVER = Deobfuscator$exteraGramDev$TMessagesProj.getString(-103381879506479L);

        private DevServer() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemTypes;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class MenuItemTypes {
        public static final String MESSAGE_CONTEXT_MENU = Deobfuscator$exteraGramDev$TMessagesProj.getString(-105091276490287L);
        public static final String DRAWER_MENU = Deobfuscator$exteraGramDev$TMessagesProj.getString(-105258780214831L);
        public static final String MAIN_MENU = Deobfuscator$exteraGramDev$TMessagesProj.getString(-105241600345647L);
        public static final String CHAT_ACTION_MENU = Deobfuscator$exteraGramDev$TMessagesProj.getString(-103635282576943L);
        public static final String PROFILE_ACTION_MENU = Deobfuscator$exteraGramDev$TMessagesProj.getString(-103699707086383L);

        private MenuItemTypes() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsConstants$MenuItemProperties;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class MenuItemProperties {
        public static final String MENU_TYPE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-104047599437359L);
        public static final String ITEM_ID = Deobfuscator$exteraGramDev$TMessagesProj.getString(-104159268587055L);
        public static final String TEXT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-104124908848687L);
        public static final String SUBTEXT = Deobfuscator$exteraGramDev$TMessagesProj.getString(-104137793750575L);
        public static final String ICON = Deobfuscator$exteraGramDev$TMessagesProj.getString(-102591605524015L);
        public static final String ON_CLICK = Deobfuscator$exteraGramDev$TMessagesProj.getString(-102552950818351L);
        public static final String CONDITION = Deobfuscator$exteraGramDev$TMessagesProj.getString(-102651735066159L);
        public static final String PRIORITY = Deobfuscator$exteraGramDev$TMessagesProj.getString(-102625965262383L);

        private MenuItemProperties() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class HookFilterTypes {
        public static final String RESULT_IS_NULL = Deobfuscator$exteraGramDev$TMessagesProj.getString(-64890382599727L);
        public static final String RESULT_IS_TRUE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-64963397043759L);
        public static final String RESULT_IS_FALSE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-65019231618607L);
        public static final String RESULT_NOT_NULL = Deobfuscator$exteraGramDev$TMessagesProj.getString(-65087951095343L);
        public static final String RESULT_IS_INSTANCE_OF = Deobfuscator$exteraGramDev$TMessagesProj.getString(-65706426385967L);
        public static final String RESULT_EQUAL = Deobfuscator$exteraGramDev$TMessagesProj.getString(-65869635143215L);
        public static final String RESULT_NOT_EQUAL = Deobfuscator$exteraGramDev$TMessagesProj.getString(-65865340175919L);
        public static final String ARGUMENT_IS_NULL = Deobfuscator$exteraGramDev$TMessagesProj.getString(-65929764685359L);
        public static final String ARGUMENT_IS_TRUE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-65530332726831L);
        public static final String ARGUMENT_IS_FALSE = Deobfuscator$exteraGramDev$TMessagesProj.getString(-65594757236271L);
        public static final String ARGUMENT_NOT_NULL = Deobfuscator$exteraGramDev$TMessagesProj.getString(-65672066647599L);
        public static final String ARGUMENT_IS_INSTANCE_OF = Deobfuscator$exteraGramDev$TMessagesProj.getString(-64100108617263L);
        public static final String ARGUMENT_EQUAL = Deobfuscator$exteraGramDev$TMessagesProj.getString(-64134468355631L);
        public static final String ARGUMENT_NOT_EQUAL = Deobfuscator$exteraGramDev$TMessagesProj.getString(-64207482799663L);
        public static final String CONDITION = Deobfuscator$exteraGramDev$TMessagesProj.getString(-64280497243695L);
        public static final String OR = Deobfuscator$exteraGramDev$TMessagesProj.getString(-63773691102767L);

        private HookFilterTypes() {
        }
    }
}
