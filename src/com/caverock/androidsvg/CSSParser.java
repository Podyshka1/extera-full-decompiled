package com.caverock.androidsvg;

import android.util.Log;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGParser;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.text.Typography;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes4.dex */
class CSSParser {
    private MediaType deviceMediaType;
    private boolean inMediaRule = false;
    private Source source;

    public enum AttribOp {
        EXISTS,
        EQUALS,
        INCLUDES,
        DASHMATCH
    }

    public enum Combinator {
        DESCENDANT,
        CHILD,
        FOLLOWS
    }

    public enum MediaType {
        all,
        aural,
        braille,
        embossed,
        handheld,
        print,
        projection,
        screen,
        speech,
        tty,
        tv
    }

    public interface PseudoClass {
        boolean matches(RuleMatchContext ruleMatchContext, SVG.SvgElementBase svgElementBase);
    }

    public enum Source {
        Document,
        RenderOptions
    }

    public enum PseudoClassIdents {
        target,
        root,
        nth_child,
        nth_last_child,
        nth_of_type,
        nth_last_of_type,
        first_child,
        last_child,
        first_of_type,
        last_of_type,
        only_child,
        only_of_type,
        empty,
        not,
        lang,
        link,
        visited,
        hover,
        active,
        focus,
        enabled,
        disabled,
        checked,
        indeterminate,
        UNSUPPORTED;

        private static final Map<String, PseudoClassIdents> cache = new HashMap();

        static {
            for (PseudoClassIdents pseudoClassIdents : values()) {
                if (pseudoClassIdents != UNSUPPORTED) {
                    cache.put(pseudoClassIdents.name().replace('_', SignatureVisitor.SUPER), pseudoClassIdents);
                }
            }
        }

        public static PseudoClassIdents fromString(String str) {
            PseudoClassIdents pseudoClassIdents = cache.get(str);
            return pseudoClassIdents != null ? pseudoClassIdents : UNSUPPORTED;
        }
    }

    public static class Attrib {
        public final String name;
        final AttribOp operation;
        public final String value;

        public Attrib(String str, AttribOp attribOp, String str2) {
            this.name = str;
            this.operation = attribOp;
            this.value = str2;
        }
    }

    public static class SimpleSelector {
        Combinator combinator;
        String tag;
        List<Attrib> attribs = null;
        List<PseudoClass> pseudos = null;

        public SimpleSelector(Combinator combinator, String str) {
            this.combinator = null;
            this.tag = null;
            this.combinator = combinator == null ? Combinator.DESCENDANT : combinator;
            this.tag = str;
        }

        public void addAttrib(String str, AttribOp attribOp, String str2) {
            if (this.attribs == null) {
                this.attribs = new ArrayList();
            }
            this.attribs.add(new Attrib(str, attribOp, str2));
        }

        public void addPseudo(PseudoClass pseudoClass) {
            if (this.pseudos == null) {
                this.pseudos = new ArrayList();
            }
            this.pseudos.add(pseudoClass);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Combinator combinator = this.combinator;
            if (combinator == Combinator.CHILD) {
                sb.append("> ");
            } else if (combinator == Combinator.FOLLOWS) {
                sb.append("+ ");
            }
            String str = this.tag;
            if (str == null) {
                str = "*";
            }
            sb.append(str);
            List<Attrib> list = this.attribs;
            if (list != null) {
                for (Attrib attrib : list) {
                    sb.append('[');
                    sb.append(attrib.name);
                    int i = C11811.$SwitchMap$com$caverock$androidsvg$CSSParser$AttribOp[attrib.operation.ordinal()];
                    if (i == 1) {
                        sb.append(SignatureVisitor.INSTANCEOF);
                        sb.append(attrib.value);
                    } else if (i == 2) {
                        sb.append("~=");
                        sb.append(attrib.value);
                    } else if (i == 3) {
                        sb.append("|=");
                        sb.append(attrib.value);
                    }
                    sb.append(']');
                }
            }
            List<PseudoClass> list2 = this.pseudos;
            if (list2 != null) {
                for (PseudoClass pseudoClass : list2) {
                    sb.append(':');
                    sb.append(pseudoClass);
                }
            }
            return sb.toString();
        }
    }

    public static class Ruleset {
        private List<Rule> rules = null;

        public void add(Rule rule) {
            if (this.rules == null) {
                this.rules = new ArrayList();
            }
            int i = 0;
            while (true) {
                int size = this.rules.size();
                List<Rule> list = this.rules;
                if (i < size) {
                    if (list.get(i).selector.specificity > rule.selector.specificity) {
                        this.rules.add(i, rule);
                        return;
                    }
                    i++;
                } else {
                    list.add(rule);
                    return;
                }
            }
        }

        public void addAll(Ruleset ruleset) {
            if (ruleset.rules == null) {
                return;
            }
            if (this.rules == null) {
                this.rules = new ArrayList(ruleset.rules.size());
            }
            Iterator<Rule> it = ruleset.rules.iterator();
            while (it.hasNext()) {
                add(it.next());
            }
        }

        public List<Rule> getRules() {
            return this.rules;
        }

        public boolean isEmpty() {
            List<Rule> list = this.rules;
            return list == null || list.isEmpty();
        }

        public int ruleCount() {
            List<Rule> list = this.rules;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        public void removeFromSource(Source source) {
            List<Rule> list = this.rules;
            if (list == null) {
                return;
            }
            Iterator<Rule> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().source == source) {
                    it.remove();
                }
            }
        }

        public String toString() {
            if (this.rules == null) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            StringBuilder sb = new StringBuilder();
            Iterator<Rule> it = this.rules.iterator();
            while (it.hasNext()) {
                sb.append(it.next().toString());
                sb.append('\n');
            }
            return sb.toString();
        }
    }

    public static class Rule {
        Selector selector;
        Source source;
        SVG.Style style;

        public Rule(Selector selector, SVG.Style style, Source source) {
            this.selector = selector;
            this.style = style;
            this.source = source;
        }

        public String toString() {
            return String.valueOf(this.selector) + " {...} (src=" + this.source + ")";
        }
    }

    public static class Selector {
        List<SimpleSelector> simpleSelectors;
        int specificity;

        private Selector() {
            this.simpleSelectors = null;
            this.specificity = 0;
        }

        public /* synthetic */ Selector(C11811 c11811) {
            this();
        }

        public void add(SimpleSelector simpleSelector) {
            if (this.simpleSelectors == null) {
                this.simpleSelectors = new ArrayList();
            }
            this.simpleSelectors.add(simpleSelector);
        }

        public int size() {
            List<SimpleSelector> list = this.simpleSelectors;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public SimpleSelector get(int i) {
            return this.simpleSelectors.get(i);
        }

        public boolean isEmpty() {
            List<SimpleSelector> list = this.simpleSelectors;
            return list == null || list.isEmpty();
        }

        public void addedIdAttribute() {
            this.specificity += DurationKt.NANOS_IN_MILLIS;
        }

        public void addedAttributeOrPseudo() {
            this.specificity += 1000;
        }

        public void addedElement() {
            this.specificity++;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Iterator<SimpleSelector> it = this.simpleSelectors.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(' ');
            }
            sb.append('[');
            sb.append(this.specificity);
            sb.append(']');
            return sb.toString();
        }
    }

    public CSSParser(MediaType mediaType, Source source) {
        this.deviceMediaType = mediaType;
        this.source = source;
    }

    public Ruleset parse(String str) {
        CSSTextScanner cSSTextScanner = new CSSTextScanner(str);
        cSSTextScanner.skipWhitespace();
        return parseRuleset(cSSTextScanner);
    }

    public static boolean mediaMatches(String str, MediaType mediaType) {
        CSSTextScanner cSSTextScanner = new CSSTextScanner(str);
        cSSTextScanner.skipWhitespace();
        return mediaMatches(parseMediaList(cSSTextScanner), mediaType);
    }

    private static void warn(String str, Object... objArr) {
        Log.w("CSSParser", String.format(str, objArr));
    }

    public static class CSSTextScanner extends SVGParser.TextScanner {
        private int hexChar(int i) {
            if (i >= 48 && i <= 57) {
                return i - 48;
            }
            if (i >= 65 && i <= 70) {
                return i - 55;
            }
            if (i < 97 || i > 102) {
                return -1;
            }
            return i - 87;
        }

        public CSSTextScanner(String str) {
            super(str.replaceAll("(?s)/\\*.*?\\*/", _UrlKt.FRAGMENT_ENCODE_SET));
        }

        public String nextIdentifier() {
            int iScanForIdentifier = scanForIdentifier();
            int i = this.position;
            if (iScanForIdentifier == i) {
                return null;
            }
            String strSubstring = this.input.substring(i, iScanForIdentifier);
            this.position = iScanForIdentifier;
            return strSubstring;
        }

        private int scanForIdentifier() {
            int i;
            boolean zEmpty = empty();
            int i2 = this.position;
            if (zEmpty) {
                return i2;
            }
            int iCharAt = this.input.charAt(i2);
            if (iCharAt == 45) {
                iCharAt = advanceChar();
            }
            if ((iCharAt < 65 || iCharAt > 90) && ((iCharAt < 97 || iCharAt > 122) && iCharAt != 95)) {
                i = i2;
            } else {
                int iAdvanceChar = advanceChar();
                while (true) {
                    if ((iAdvanceChar < 65 || iAdvanceChar > 90) && ((iAdvanceChar < 97 || iAdvanceChar > 122) && !((iAdvanceChar >= 48 && iAdvanceChar <= 57) || iAdvanceChar == 45 || iAdvanceChar == 95))) {
                        break;
                    }
                    iAdvanceChar = advanceChar();
                }
                i = this.position;
            }
            this.position = i2;
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<Selector> nextSelectorGroup() {
            C11811 c11811 = null;
            if (empty()) {
                return null;
            }
            ArrayList arrayList = new ArrayList(1);
            Selector selector = new Selector(c11811);
            while (!empty() && nextSimpleSelector(selector)) {
                if (skipCommaWhitespace()) {
                    arrayList.add(selector);
                    selector = new Selector(c11811);
                }
            }
            if (!selector.isEmpty()) {
                arrayList.add(selector);
            }
            return arrayList;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean nextSimpleSelector(Selector selector) throws CSSParseException {
            Combinator combinator;
            SimpleSelector simpleSelector;
            AttribOp attribOp;
            String strNextAttribValue;
            if (empty()) {
                return false;
            }
            int i = this.position;
            if (selector.isEmpty()) {
                combinator = null;
            } else if (consume(Typography.greater)) {
                combinator = Combinator.CHILD;
                skipWhitespace();
            } else if (consume(SignatureVisitor.EXTENDS)) {
                combinator = Combinator.FOLLOWS;
                skipWhitespace();
            }
            if (consume('*')) {
                simpleSelector = new SimpleSelector(combinator, null);
            } else {
                String strNextIdentifier = nextIdentifier();
                if (strNextIdentifier != null) {
                    SimpleSelector simpleSelector2 = new SimpleSelector(combinator, strNextIdentifier);
                    selector.addedElement();
                    simpleSelector = simpleSelector2;
                } else {
                    simpleSelector = null;
                }
            }
            while (!empty()) {
                if (consume('.')) {
                    if (simpleSelector == null) {
                        simpleSelector = new SimpleSelector(combinator, null);
                    }
                    String strNextIdentifier2 = nextIdentifier();
                    if (strNextIdentifier2 == null) {
                        throw new CSSParseException("Invalid \".class\" simpleSelectors");
                    }
                    simpleSelector.addAttrib("class", AttribOp.EQUALS, strNextIdentifier2);
                    selector.addedAttributeOrPseudo();
                } else if (consume('#')) {
                    if (simpleSelector == null) {
                        simpleSelector = new SimpleSelector(combinator, null);
                    }
                    String strNextIdentifier3 = nextIdentifier();
                    if (strNextIdentifier3 == null) {
                        throw new CSSParseException("Invalid \"#id\" simpleSelectors");
                    }
                    simpleSelector.addAttrib("id", AttribOp.EQUALS, strNextIdentifier3);
                    selector.addedIdAttribute();
                } else if (consume('[')) {
                    if (simpleSelector == null) {
                        simpleSelector = new SimpleSelector(combinator, null);
                    }
                    skipWhitespace();
                    String strNextIdentifier4 = nextIdentifier();
                    if (strNextIdentifier4 == null) {
                        throw new CSSParseException("Invalid attribute simpleSelectors");
                    }
                    skipWhitespace();
                    if (consume(SignatureVisitor.INSTANCEOF)) {
                        attribOp = AttribOp.EQUALS;
                    } else if (consume("~=")) {
                        attribOp = AttribOp.INCLUDES;
                    } else {
                        attribOp = consume("|=") ? AttribOp.DASHMATCH : null;
                    }
                    if (attribOp != null) {
                        skipWhitespace();
                        strNextAttribValue = nextAttribValue();
                        if (strNextAttribValue == null) {
                            throw new CSSParseException("Invalid attribute simpleSelectors");
                        }
                        skipWhitespace();
                    } else {
                        strNextAttribValue = null;
                    }
                    if (!consume(']')) {
                        throw new CSSParseException("Invalid attribute simpleSelectors");
                    }
                    if (attribOp == null) {
                        attribOp = AttribOp.EXISTS;
                    }
                    simpleSelector.addAttrib(strNextIdentifier4, attribOp, strNextAttribValue);
                    selector.addedAttributeOrPseudo();
                } else {
                    if (!consume(':')) {
                        break;
                    }
                    if (simpleSelector == null) {
                        simpleSelector = new SimpleSelector(combinator, null);
                    }
                    parsePseudoClass(selector, simpleSelector);
                }
            }
            if (simpleSelector != null) {
                selector.add(simpleSelector);
                return true;
            }
            this.position = i;
            return false;
        }

        public static class AnPlusB {

            /* JADX INFO: renamed from: a */
            public int f49a;

            /* JADX INFO: renamed from: b */
            public int f50b;

            public AnPlusB(int i, int i2) {
                this.f49a = i;
                this.f50b = i2;
            }
        }

        private AnPlusB nextAnPlusB() {
            IntegerParser integerParser;
            AnPlusB anPlusB;
            if (empty()) {
                return null;
            }
            int i = this.position;
            if (!consume('(')) {
                return null;
            }
            skipWhitespace();
            int i2 = 1;
            if (consume("odd")) {
                anPlusB = new AnPlusB(2, 1);
            } else {
                if (consume("even")) {
                    anPlusB = new AnPlusB(2, 0);
                } else {
                    int i3 = (!consume(SignatureVisitor.EXTENDS) && consume(SignatureVisitor.SUPER)) ? -1 : 1;
                    IntegerParser integerParser2 = IntegerParser.parseInt(this.input, this.position, this.inputLength, false);
                    if (integerParser2 != null) {
                        this.position = integerParser2.getEndPos();
                    }
                    if (consume('n') || consume('N')) {
                        if (integerParser2 == null) {
                            integerParser2 = new IntegerParser(1L, this.position);
                        }
                        skipWhitespace();
                        boolean zConsume = consume(SignatureVisitor.EXTENDS);
                        if (!zConsume && (zConsume = consume(SignatureVisitor.SUPER))) {
                            i2 = -1;
                        }
                        if (zConsume) {
                            skipWhitespace();
                            integerParser = IntegerParser.parseInt(this.input, this.position, this.inputLength, false);
                            if (integerParser != null) {
                                this.position = integerParser.getEndPos();
                                int i4 = i2;
                                i2 = i3;
                                i3 = i4;
                            } else {
                                this.position = i;
                                return null;
                            }
                        } else {
                            int i5 = i2;
                            i2 = i3;
                            i3 = i5;
                            integerParser = null;
                        }
                    } else {
                        integerParser = integerParser2;
                        integerParser2 = null;
                    }
                    anPlusB = new AnPlusB(integerParser2 == null ? 0 : i2 * integerParser2.value(), integerParser != null ? i3 * integerParser.value() : 0);
                }
            }
            skipWhitespace();
            if (consume(')')) {
                return anPlusB;
            }
            this.position = i;
            return null;
        }

        private List<String> nextIdentListParam() {
            if (empty()) {
                return null;
            }
            int i = this.position;
            if (!consume('(')) {
                return null;
            }
            skipWhitespace();
            ArrayList arrayList = null;
            do {
                String strNextIdentifier = nextIdentifier();
                if (strNextIdentifier == null) {
                    this.position = i;
                    return null;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(strNextIdentifier);
                skipWhitespace();
            } while (skipCommaWhitespace());
            if (consume(')')) {
                return arrayList;
            }
            this.position = i;
            return null;
        }

        private List<Selector> nextPseudoNotParam() {
            List<SimpleSelector> list;
            List<PseudoClass> list2;
            if (empty()) {
                return null;
            }
            int i = this.position;
            if (!consume('(')) {
                return null;
            }
            skipWhitespace();
            List<Selector> listNextSelectorGroup = nextSelectorGroup();
            if (listNextSelectorGroup == null) {
                this.position = i;
                return null;
            }
            if (!consume(')')) {
                this.position = i;
                return null;
            }
            Iterator<Selector> it = listNextSelectorGroup.iterator();
            while (it.hasNext() && (list = it.next().simpleSelectors) != null) {
                Iterator<SimpleSelector> it2 = list.iterator();
                while (it2.hasNext() && (list2 = it2.next().pseudos) != null) {
                    Iterator<PseudoClass> it3 = list2.iterator();
                    while (it3.hasNext()) {
                        if (it3.next() instanceof PseudoClassNot) {
                            return null;
                        }
                    }
                }
            }
            return listNextSelectorGroup;
        }

        private void parsePseudoClass(Selector selector, SimpleSelector simpleSelector) throws CSSParseException {
            PseudoClass pseudoClass;
            PseudoClass pseudoClassAnPlusB;
            PseudoClass pseudoClass2;
            String strNextIdentifier = nextIdentifier();
            if (strNextIdentifier == null) {
                throw new CSSParseException("Invalid pseudo class");
            }
            PseudoClassIdents pseudoClassIdentsFromString = PseudoClassIdents.fromString(strNextIdentifier);
            C11811 c11811 = null;
            switch (C11811.$SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[pseudoClassIdentsFromString.ordinal()]) {
                case 1:
                    PseudoClass pseudoClassAnPlusB2 = new PseudoClassAnPlusB(0, 1, true, false, null);
                    selector.addedAttributeOrPseudo();
                    pseudoClass2 = pseudoClassAnPlusB2;
                    pseudoClass = pseudoClass2;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 2:
                    PseudoClass pseudoClassAnPlusB3 = new PseudoClassAnPlusB(0, 1, false, false, null);
                    selector.addedAttributeOrPseudo();
                    pseudoClass = pseudoClassAnPlusB3;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 3:
                    PseudoClass pseudoClassOnlyChild = new PseudoClassOnlyChild(false, null);
                    selector.addedAttributeOrPseudo();
                    pseudoClass = pseudoClassOnlyChild;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 4:
                    pseudoClassAnPlusB = new PseudoClassAnPlusB(0, 1, true, true, simpleSelector.tag);
                    selector.addedAttributeOrPseudo();
                    pseudoClass = pseudoClassAnPlusB;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 5:
                    PseudoClass pseudoClassAnPlusB4 = new PseudoClassAnPlusB(0, 1, false, true, simpleSelector.tag);
                    selector.addedAttributeOrPseudo();
                    pseudoClass = pseudoClassAnPlusB4;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 6:
                    PseudoClass pseudoClassOnlyChild2 = new PseudoClassOnlyChild(true, simpleSelector.tag);
                    selector.addedAttributeOrPseudo();
                    pseudoClass = pseudoClassOnlyChild2;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 7:
                    PseudoClass pseudoClassRoot = new PseudoClassRoot(c11811);
                    selector.addedAttributeOrPseudo();
                    pseudoClass = pseudoClassRoot;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 8:
                    PseudoClass pseudoClassEmpty = new PseudoClassEmpty(c11811);
                    selector.addedAttributeOrPseudo();
                    pseudoClass = pseudoClassEmpty;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 9:
                case 10:
                case 11:
                case 12:
                    boolean z = pseudoClassIdentsFromString == PseudoClassIdents.nth_child || pseudoClassIdentsFromString == PseudoClassIdents.nth_of_type;
                    boolean z2 = pseudoClassIdentsFromString == PseudoClassIdents.nth_of_type || pseudoClassIdentsFromString == PseudoClassIdents.nth_last_of_type;
                    AnPlusB anPlusBNextAnPlusB = nextAnPlusB();
                    if (anPlusBNextAnPlusB == null) {
                        throw new CSSParseException("Invalid or missing parameter section for pseudo class: ".concat(strNextIdentifier));
                    }
                    pseudoClassAnPlusB = new PseudoClassAnPlusB(anPlusBNextAnPlusB.f49a, anPlusBNextAnPlusB.f50b, z, z2, simpleSelector.tag);
                    selector.addedAttributeOrPseudo();
                    pseudoClass = pseudoClassAnPlusB;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 13:
                    List<Selector> listNextPseudoNotParam = nextPseudoNotParam();
                    if (listNextPseudoNotParam == null) {
                        throw new CSSParseException("Invalid or missing parameter section for pseudo class: ".concat(strNextIdentifier));
                    }
                    PseudoClassNot pseudoClassNot = new PseudoClassNot(listNextPseudoNotParam);
                    selector.specificity = pseudoClassNot.getSpecificity();
                    pseudoClass2 = pseudoClassNot;
                    pseudoClass = pseudoClass2;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 14:
                    PseudoClass pseudoClassTarget = new PseudoClassTarget(c11811);
                    selector.addedAttributeOrPseudo();
                    pseudoClass = pseudoClassTarget;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 15:
                    nextIdentListParam();
                    PseudoClass pseudoClassNotSupported = new PseudoClassNotSupported(strNextIdentifier);
                    selector.addedAttributeOrPseudo();
                    pseudoClass = pseudoClassNotSupported;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                    PseudoClass pseudoClassNotSupported2 = new PseudoClassNotSupported(strNextIdentifier);
                    selector.addedAttributeOrPseudo();
                    pseudoClass = pseudoClassNotSupported2;
                    simpleSelector.addPseudo(pseudoClass);
                    return;
                default:
                    throw new CSSParseException("Unsupported pseudo class: ".concat(strNextIdentifier));
            }
        }

        private String nextAttribValue() {
            if (empty()) {
                return null;
            }
            String strNextQuotedString = nextQuotedString();
            return strNextQuotedString != null ? strNextQuotedString : nextIdentifier();
        }

        public String nextPropertyValue() {
            if (empty()) {
                return null;
            }
            int i = this.position;
            int iCharAt = this.input.charAt(i);
            int i2 = i;
            while (iCharAt != -1 && iCharAt != 59 && iCharAt != 125 && iCharAt != 33 && !isEOL(iCharAt)) {
                if (!isWhitespace(iCharAt)) {
                    i2 = this.position + 1;
                }
                iCharAt = advanceChar();
            }
            if (this.position > i) {
                return this.input.substring(i, i2);
            }
            this.position = i;
            return null;
        }

        public String nextCSSString() {
            int iHexChar;
            if (empty()) {
                return null;
            }
            char cCharAt = this.input.charAt(this.position);
            if (cCharAt != '\'' && cCharAt != '\"') {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            this.position++;
            int iIntValue = nextChar().intValue();
            while (iIntValue != -1 && iIntValue != cCharAt) {
                if (iIntValue == 92) {
                    iIntValue = nextChar().intValue();
                    if (iIntValue != -1) {
                        if (iIntValue == 10 || iIntValue == 13 || iIntValue == 12) {
                            iIntValue = nextChar().intValue();
                        } else {
                            int iHexChar2 = hexChar(iIntValue);
                            if (iHexChar2 != -1) {
                                for (int i = 1; i <= 5 && (iHexChar = hexChar((iIntValue = nextChar().intValue()))) != -1; i++) {
                                    iHexChar2 = (iHexChar2 * 16) + iHexChar;
                                }
                                sb.append((char) iHexChar2);
                            }
                        }
                    }
                }
                sb.append((char) iIntValue);
                iIntValue = nextChar().intValue();
            }
            return sb.toString();
        }

        public String nextURL() {
            if (empty()) {
                return null;
            }
            int i = this.position;
            if (!consume("url(")) {
                return null;
            }
            skipWhitespace();
            String strNextCSSString = nextCSSString();
            if (strNextCSSString == null) {
                strNextCSSString = nextLegacyURL();
            }
            if (strNextCSSString == null) {
                this.position = i;
                return null;
            }
            skipWhitespace();
            if (empty() || consume(")")) {
                return strNextCSSString;
            }
            this.position = i;
            return null;
        }

        public String nextLegacyURL() {
            char cCharAt;
            int iHexChar;
            StringBuilder sb = new StringBuilder();
            while (!empty() && (cCharAt = this.input.charAt(this.position)) != '\'' && cCharAt != '\"' && cCharAt != '(' && cCharAt != ')' && !isWhitespace(cCharAt) && !Character.isISOControl((int) cCharAt)) {
                this.position++;
                if (cCharAt == '\\') {
                    if (!empty()) {
                        String str = this.input;
                        int i = this.position;
                        this.position = i + 1;
                        cCharAt = str.charAt(i);
                        if (cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\f') {
                            int iHexChar2 = hexChar(cCharAt);
                            if (iHexChar2 != -1) {
                                for (int i2 = 1; i2 <= 5 && !empty() && (iHexChar = hexChar(this.input.charAt(this.position))) != -1; i2++) {
                                    this.position++;
                                    iHexChar2 = (iHexChar2 * 16) + iHexChar;
                                }
                                sb.append((char) iHexChar2);
                            }
                        }
                    }
                }
                sb.append(cCharAt);
            }
            if (sb.length() == 0) {
                return null;
            }
            return sb.toString();
        }
    }

    /* JADX INFO: renamed from: com.caverock.androidsvg.CSSParser$1 */
    public static /* synthetic */ class C11811 {
        static final /* synthetic */ int[] $SwitchMap$com$caverock$androidsvg$CSSParser$AttribOp;
        static final /* synthetic */ int[] $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents;

        static {
            int[] iArr = new int[PseudoClassIdents.values().length];
            $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents = iArr;
            try {
                iArr[PseudoClassIdents.first_child.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.last_child.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.only_child.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.first_of_type.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.last_of_type.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.only_of_type.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.root.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.empty.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.nth_child.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.nth_last_child.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.nth_of_type.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.nth_last_of_type.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.not.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.target.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.lang.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.link.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.visited.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.hover.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.active.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.focus.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.enabled.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.disabled.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.checked.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.indeterminate.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            int[] iArr2 = new int[AttribOp.values().length];
            $SwitchMap$com$caverock$androidsvg$CSSParser$AttribOp = iArr2;
            try {
                iArr2[AttribOp.EQUALS.ordinal()] = 1;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$AttribOp[AttribOp.INCLUDES.ordinal()] = 2;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$AttribOp[AttribOp.DASHMATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    private static boolean mediaMatches(List<MediaType> list, MediaType mediaType) {
        for (MediaType mediaType2 : list) {
            if (mediaType2 == MediaType.all || mediaType2 == mediaType) {
                return true;
            }
        }
        return false;
    }

    private static List<MediaType> parseMediaList(CSSTextScanner cSSTextScanner) {
        String strNextWord;
        ArrayList arrayList = new ArrayList();
        while (!cSSTextScanner.empty() && (strNextWord = cSSTextScanner.nextWord()) != null) {
            try {
                arrayList.add(MediaType.valueOf(strNextWord));
            } catch (IllegalArgumentException unused) {
            }
            if (!cSSTextScanner.skipCommaWhitespace()) {
                break;
            }
        }
        return arrayList;
    }

    private void parseAtRule(Ruleset ruleset, CSSTextScanner cSSTextScanner) throws CSSParseException {
        String strNextIdentifier = cSSTextScanner.nextIdentifier();
        cSSTextScanner.skipWhitespace();
        if (strNextIdentifier == null) {
            throw new CSSParseException("Invalid '@' rule");
        }
        if (!this.inMediaRule && strNextIdentifier.equals("media")) {
            List<MediaType> mediaList = parseMediaList(cSSTextScanner);
            if (!cSSTextScanner.consume('{')) {
                throw new CSSParseException("Invalid @media rule: missing rule set");
            }
            cSSTextScanner.skipWhitespace();
            if (mediaMatches(mediaList, this.deviceMediaType)) {
                this.inMediaRule = true;
                ruleset.addAll(parseRuleset(cSSTextScanner));
                this.inMediaRule = false;
            } else {
                parseRuleset(cSSTextScanner);
            }
            if (!cSSTextScanner.empty() && !cSSTextScanner.consume('}')) {
                throw new CSSParseException("Invalid @media rule: expected '}' at end of rule set");
            }
        } else if (!this.inMediaRule && strNextIdentifier.equals("import")) {
            String strNextURL = cSSTextScanner.nextURL();
            if (strNextURL == null) {
                strNextURL = cSSTextScanner.nextCSSString();
            }
            if (strNextURL == null) {
                throw new CSSParseException("Invalid @import rule: expected string or url()");
            }
            cSSTextScanner.skipWhitespace();
            parseMediaList(cSSTextScanner);
            if (!cSSTextScanner.empty() && !cSSTextScanner.consume(';')) {
                throw new CSSParseException("Invalid @media rule: expected '}' at end of rule set");
            }
            SVG.getFileResolver();
        } else {
            warn("Ignoring @%s rule", strNextIdentifier);
            skipAtRule(cSSTextScanner);
        }
        cSSTextScanner.skipWhitespace();
    }

    private void skipAtRule(CSSTextScanner cSSTextScanner) {
        int i = 0;
        while (!cSSTextScanner.empty()) {
            int iIntValue = cSSTextScanner.nextChar().intValue();
            if (iIntValue == 59 && i == 0) {
                return;
            }
            if (iIntValue == 123) {
                i++;
            } else if (iIntValue == 125 && i > 0 && i - 1 == 0) {
                return;
            }
        }
    }

    private Ruleset parseRuleset(CSSTextScanner cSSTextScanner) {
        Ruleset ruleset = new Ruleset();
        while (!cSSTextScanner.empty()) {
            try {
                if (!cSSTextScanner.consume("<!--") && !cSSTextScanner.consume("-->")) {
                    if (cSSTextScanner.consume('@')) {
                        parseAtRule(ruleset, cSSTextScanner);
                    } else if (!parseRule(ruleset, cSSTextScanner)) {
                        break;
                    }
                }
            } catch (CSSParseException e) {
                Log.e("CSSParser", "CSS parser terminated early due to error: " + e.getMessage());
                return ruleset;
            }
        }
        return ruleset;
    }

    private boolean parseRule(Ruleset ruleset, CSSTextScanner cSSTextScanner) throws CSSParseException {
        List listNextSelectorGroup = cSSTextScanner.nextSelectorGroup();
        if (listNextSelectorGroup == null || listNextSelectorGroup.isEmpty()) {
            return false;
        }
        if (!cSSTextScanner.consume('{')) {
            throw new CSSParseException("Malformed rule block: expected '{'");
        }
        cSSTextScanner.skipWhitespace();
        SVG.Style declarations = parseDeclarations(cSSTextScanner);
        cSSTextScanner.skipWhitespace();
        Iterator it = listNextSelectorGroup.iterator();
        while (it.hasNext()) {
            ruleset.add(new Rule((Selector) it.next(), declarations, this.source));
        }
        return true;
    }

    private SVG.Style parseDeclarations(CSSTextScanner cSSTextScanner) throws CSSParseException {
        SVG.Style style = new SVG.Style();
        do {
            String strNextIdentifier = cSSTextScanner.nextIdentifier();
            cSSTextScanner.skipWhitespace();
            if (!cSSTextScanner.consume(':')) {
                throw new CSSParseException("Expected ':'");
            }
            cSSTextScanner.skipWhitespace();
            String strNextPropertyValue = cSSTextScanner.nextPropertyValue();
            if (strNextPropertyValue == null) {
                throw new CSSParseException("Expected property value");
            }
            cSSTextScanner.skipWhitespace();
            if (cSSTextScanner.consume('!')) {
                cSSTextScanner.skipWhitespace();
                if (!cSSTextScanner.consume("important")) {
                    throw new CSSParseException("Malformed rule set: found unexpected '!'");
                }
                cSSTextScanner.skipWhitespace();
            }
            cSSTextScanner.consume(';');
            SVGParser.processStyleProperty(style, strNextIdentifier, strNextPropertyValue);
            cSSTextScanner.skipWhitespace();
            if (cSSTextScanner.empty()) {
                break;
            }
        } while (!cSSTextScanner.consume('}'));
        return style;
    }

    public static List<String> parseClassAttribute(String str) {
        CSSTextScanner cSSTextScanner = new CSSTextScanner(str);
        ArrayList arrayList = null;
        while (!cSSTextScanner.empty()) {
            String strNextToken = cSSTextScanner.nextToken();
            if (strNextToken != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(strNextToken);
                cSSTextScanner.skipWhitespace();
            }
        }
        return arrayList;
    }

    public static class RuleMatchContext {
        SVG.SvgElementBase targetElement;

        public String toString() {
            SVG.SvgElementBase svgElementBase = this.targetElement;
            if (svgElementBase != null) {
                return String.format("<%s id=\"%s\">", svgElementBase.getNodeName(), this.targetElement.id);
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    public static boolean ruleMatch(RuleMatchContext ruleMatchContext, Selector selector, SVG.SvgElementBase svgElementBase) {
        ArrayList arrayList = new ArrayList();
        for (Object obj = svgElementBase.parent; obj != null; obj = ((SVG.SvgObject) obj).parent) {
            arrayList.add(0, obj);
        }
        int size = arrayList.size() - 1;
        if (selector.size() == 1) {
            return selectorMatch(ruleMatchContext, selector.get(0), arrayList, size, svgElementBase);
        }
        return ruleMatch(ruleMatchContext, selector, selector.size() - 1, arrayList, size, svgElementBase);
    }

    private static boolean ruleMatch(RuleMatchContext ruleMatchContext, Selector selector, int i, List<SVG.SvgContainer> list, int i2, SVG.SvgElementBase svgElementBase) {
        SimpleSelector simpleSelector = selector.get(i);
        if (!selectorMatch(ruleMatchContext, simpleSelector, list, i2, svgElementBase)) {
            return false;
        }
        Combinator combinator = simpleSelector.combinator;
        if (combinator == Combinator.DESCENDANT) {
            if (i == 0) {
                return true;
            }
            while (i2 >= 0) {
                if (ruleMatchOnAncestors(ruleMatchContext, selector, i - 1, list, i2)) {
                    return true;
                }
                i2--;
            }
            return false;
        }
        if (combinator == Combinator.CHILD) {
            return ruleMatchOnAncestors(ruleMatchContext, selector, i - 1, list, i2);
        }
        int childPosition = getChildPosition(list, i2, svgElementBase);
        if (childPosition <= 0) {
            return false;
        }
        return ruleMatch(ruleMatchContext, selector, i - 1, list, i2, (SVG.SvgElementBase) svgElementBase.parent.getChildren().get(childPosition - 1));
    }

    private static boolean ruleMatchOnAncestors(RuleMatchContext ruleMatchContext, Selector selector, int i, List<SVG.SvgContainer> list, int i2) {
        SimpleSelector simpleSelector = selector.get(i);
        SVG.SvgElementBase svgElementBase = (SVG.SvgElementBase) list.get(i2);
        if (!selectorMatch(ruleMatchContext, simpleSelector, list, i2, svgElementBase)) {
            return false;
        }
        Combinator combinator = simpleSelector.combinator;
        if (combinator == Combinator.DESCENDANT) {
            if (i == 0) {
                return true;
            }
            while (i2 > 0) {
                i2--;
                if (ruleMatchOnAncestors(ruleMatchContext, selector, i - 1, list, i2)) {
                    return true;
                }
            }
            return false;
        }
        if (combinator == Combinator.CHILD) {
            return ruleMatchOnAncestors(ruleMatchContext, selector, i - 1, list, i2 - 1);
        }
        int childPosition = getChildPosition(list, i2, svgElementBase);
        if (childPosition <= 0) {
            return false;
        }
        return ruleMatch(ruleMatchContext, selector, i - 1, list, i2, (SVG.SvgElementBase) svgElementBase.parent.getChildren().get(childPosition - 1));
    }

    private static int getChildPosition(List<SVG.SvgContainer> list, int i, SVG.SvgElementBase svgElementBase) {
        int i2 = 0;
        if (i < 0) {
            return 0;
        }
        SVG.SvgContainer svgContainer = list.get(i);
        SVG.SvgContainer svgContainer2 = svgElementBase.parent;
        if (svgContainer != svgContainer2) {
            return -1;
        }
        Iterator<SVG.SvgObject> it = svgContainer2.getChildren().iterator();
        while (it.hasNext()) {
            if (it.next() == svgElementBase) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private static boolean selectorMatch(RuleMatchContext ruleMatchContext, SimpleSelector simpleSelector, List<SVG.SvgContainer> list, int i, SVG.SvgElementBase svgElementBase) {
        List<String> list2;
        String str = simpleSelector.tag;
        if (str != null && !str.equals(svgElementBase.getNodeName().toLowerCase(Locale.US))) {
            return false;
        }
        List<Attrib> list3 = simpleSelector.attribs;
        if (list3 != null) {
            for (Attrib attrib : list3) {
                String str2 = attrib.name;
                str2.getClass();
                if (str2.equals("id")) {
                    if (!attrib.value.equals(svgElementBase.id)) {
                        return false;
                    }
                } else if (!str2.equals("class") || (list2 = svgElementBase.classNames) == null || !list2.contains(attrib.value)) {
                    return false;
                }
            }
        }
        List<PseudoClass> list4 = simpleSelector.pseudos;
        if (list4 == null) {
            return true;
        }
        Iterator<PseudoClass> it = list4.iterator();
        while (it.hasNext()) {
            if (!it.next().matches(ruleMatchContext, svgElementBase)) {
                return false;
            }
        }
        return true;
    }

    public static class PseudoClassAnPlusB implements PseudoClass {

        /* JADX INFO: renamed from: a */
        private int f51a;

        /* JADX INFO: renamed from: b */
        private int f52b;
        private boolean isFromStart;
        private boolean isOfType;
        private String nodeName;

        public PseudoClassAnPlusB(int i, int i2, boolean z, boolean z2, String str) {
            this.f51a = i;
            this.f52b = i2;
            this.isFromStart = z;
            this.isOfType = z2;
            this.nodeName = str;
        }

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public boolean matches(RuleMatchContext ruleMatchContext, SVG.SvgElementBase svgElementBase) {
            int i;
            int i2;
            String nodeName = (this.isOfType && this.nodeName == null) ? svgElementBase.getNodeName() : this.nodeName;
            SVG.SvgContainer svgContainer = svgElementBase.parent;
            if (svgContainer != null) {
                Iterator<SVG.SvgObject> it = svgContainer.getChildren().iterator();
                i = 0;
                i2 = 0;
                while (it.hasNext()) {
                    SVG.SvgElementBase svgElementBase2 = (SVG.SvgElementBase) it.next();
                    if (svgElementBase2 == svgElementBase) {
                        i = i2;
                    }
                    if (nodeName == null || svgElementBase2.getNodeName().equals(nodeName)) {
                        i2++;
                    }
                }
            } else {
                i = 0;
                i2 = 1;
            }
            int i3 = this.isFromStart ? i + 1 : i2 - i;
            int i4 = this.f51a;
            int i5 = this.f52b;
            return i4 == 0 ? i3 == i5 : (i3 - i5) % i4 == 0 && (Integer.signum(i3 - i5) == 0 || Integer.signum(i3 - this.f52b) == Integer.signum(this.f51a));
        }

        public String toString() {
            String str = this.isFromStart ? _UrlKt.FRAGMENT_ENCODE_SET : "last-";
            boolean z = this.isOfType;
            int i = this.f51a;
            return z ? String.format("nth-%schild(%dn%+d of type <%s>)", str, Integer.valueOf(i), Integer.valueOf(this.f52b), this.nodeName) : String.format("nth-%schild(%dn%+d)", str, Integer.valueOf(i), Integer.valueOf(this.f52b));
        }
    }

    public static class PseudoClassOnlyChild implements PseudoClass {
        private boolean isOfType;
        private String nodeName;

        public PseudoClassOnlyChild(boolean z, String str) {
            this.isOfType = z;
            this.nodeName = str;
        }

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public boolean matches(RuleMatchContext ruleMatchContext, SVG.SvgElementBase svgElementBase) {
            int i;
            String nodeName = (this.isOfType && this.nodeName == null) ? svgElementBase.getNodeName() : this.nodeName;
            SVG.SvgContainer svgContainer = svgElementBase.parent;
            if (svgContainer != null) {
                Iterator<SVG.SvgObject> it = svgContainer.getChildren().iterator();
                i = 0;
                while (it.hasNext()) {
                    SVG.SvgElementBase svgElementBase2 = (SVG.SvgElementBase) it.next();
                    if (nodeName == null || svgElementBase2.getNodeName().equals(nodeName)) {
                        i++;
                    }
                }
            } else {
                i = 1;
            }
            return i == 1;
        }

        public String toString() {
            return this.isOfType ? String.format("only-of-type <%s>", this.nodeName) : String.format("only-child", new Object[0]);
        }
    }

    public static class PseudoClassRoot implements PseudoClass {
        private PseudoClassRoot() {
        }

        public /* synthetic */ PseudoClassRoot(C11811 c11811) {
            this();
        }

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public boolean matches(RuleMatchContext ruleMatchContext, SVG.SvgElementBase svgElementBase) {
            return svgElementBase.parent == null;
        }

        public String toString() {
            return "root";
        }
    }

    public static class PseudoClassEmpty implements PseudoClass {
        private PseudoClassEmpty() {
        }

        public /* synthetic */ PseudoClassEmpty(C11811 c11811) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public boolean matches(RuleMatchContext ruleMatchContext, SVG.SvgElementBase svgElementBase) {
            return !(svgElementBase instanceof SVG.SvgContainer) || ((SVG.SvgContainer) svgElementBase).getChildren().size() == 0;
        }

        public String toString() {
            return "empty";
        }
    }

    public static class PseudoClassNot implements PseudoClass {
        private List<Selector> selectorGroup;

        public PseudoClassNot(List<Selector> list) {
            this.selectorGroup = list;
        }

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public boolean matches(RuleMatchContext ruleMatchContext, SVG.SvgElementBase svgElementBase) {
            Iterator<Selector> it = this.selectorGroup.iterator();
            while (it.hasNext()) {
                if (CSSParser.ruleMatch(ruleMatchContext, it.next(), svgElementBase)) {
                    return false;
                }
            }
            return true;
        }

        public int getSpecificity() {
            Iterator<Selector> it = this.selectorGroup.iterator();
            int i = Integer.MIN_VALUE;
            while (it.hasNext()) {
                int i2 = it.next().specificity;
                if (i2 > i) {
                    i = i2;
                }
            }
            return i;
        }

        public String toString() {
            return "not(" + this.selectorGroup + ")";
        }
    }

    public static class PseudoClassTarget implements PseudoClass {
        private PseudoClassTarget() {
        }

        public /* synthetic */ PseudoClassTarget(C11811 c11811) {
            this();
        }

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public boolean matches(RuleMatchContext ruleMatchContext, SVG.SvgElementBase svgElementBase) {
            return ruleMatchContext != null && svgElementBase == ruleMatchContext.targetElement;
        }

        public String toString() {
            return "target";
        }
    }

    public static class PseudoClassNotSupported implements PseudoClass {
        private String clazz;

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public boolean matches(RuleMatchContext ruleMatchContext, SVG.SvgElementBase svgElementBase) {
            return false;
        }

        public PseudoClassNotSupported(String str) {
            this.clazz = str;
        }

        public String toString() {
            return this.clazz;
        }
    }
}
