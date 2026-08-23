package io.noties.markwon.html;

import io.noties.markwon.html.HtmlTag;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
abstract class HtmlTagImpl implements HtmlTag {
    final Map<String, String> attributes;
    int end = -1;
    final String name;
    final int start;

    public HtmlTagImpl(String str, int i, Map<String, String> map) {
        this.name = str;
        this.start = i;
        this.attributes = map;
    }

    @Override // io.noties.markwon.html.HtmlTag
    public String name() {
        return this.name;
    }

    @Override // io.noties.markwon.html.HtmlTag
    public int start() {
        return this.start;
    }

    @Override // io.noties.markwon.html.HtmlTag
    public int end() {
        return this.end;
    }

    public boolean isEmpty() {
        return this.start == this.end;
    }

    @Override // io.noties.markwon.html.HtmlTag
    public Map<String, String> attributes() {
        return this.attributes;
    }

    @Override // io.noties.markwon.html.HtmlTag
    public boolean isClosed() {
        return this.end > -1;
    }

    public static class InlineImpl extends HtmlTagImpl implements HtmlTag.Inline {
        @Override // io.noties.markwon.html.HtmlTag
        public boolean isBlock() {
            return false;
        }

        public InlineImpl(String str, int i, Map<String, String> map) {
            super(str, i, map);
        }

        public void closeAt(int i) {
            if (isClosed()) {
                return;
            }
            this.end = i;
        }

        public String toString() {
            return "InlineImpl{name='" + this.name + "', start=" + this.start + ", end=" + this.end + ", attributes=" + this.attributes + '}';
        }

        @Override // io.noties.markwon.html.HtmlTag
        public HtmlTag.Block getAsBlock() {
            throw new ClassCastException("Cannot cast Inline instance to Block");
        }
    }

    public static class BlockImpl extends HtmlTagImpl implements HtmlTag.Block {
        List<BlockImpl> children;
        final BlockImpl parent;

        @Override // io.noties.markwon.html.HtmlTag
        public HtmlTag.Block getAsBlock() {
            return this;
        }

        @Override // io.noties.markwon.html.HtmlTag
        public boolean isBlock() {
            return true;
        }

        public static BlockImpl root() {
            return new BlockImpl(_UrlKt.FRAGMENT_ENCODE_SET, 0, Collections.EMPTY_MAP, null);
        }

        public static BlockImpl create(String str, int i, Map<String, String> map, BlockImpl blockImpl) {
            return new BlockImpl(str, i, map, blockImpl);
        }

        public BlockImpl(String str, int i, Map<String, String> map, BlockImpl blockImpl) {
            super(str, i, map);
            this.parent = blockImpl;
        }

        public void closeAt(int i) {
            if (isClosed()) {
                return;
            }
            this.end = i;
            List<BlockImpl> list = this.children;
            if (list != null) {
                Iterator<BlockImpl> it = list.iterator();
                while (it.hasNext()) {
                    it.next().closeAt(i);
                }
            }
        }

        @Override // io.noties.markwon.html.HtmlTag.Block
        public HtmlTag.Block parent() {
            return this.parent;
        }

        @Override // io.noties.markwon.html.HtmlTag.Block
        public List<HtmlTag.Block> children() {
            List<BlockImpl> list = this.children;
            if (list == null) {
                return Collections.EMPTY_LIST;
            }
            return Collections.unmodifiableList(list);
        }

        @Override // io.noties.markwon.html.HtmlTagImpl, io.noties.markwon.html.HtmlTag
        public Map<String, String> attributes() {
            return this.attributes;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BlockImpl{name='");
            sb.append(this.name);
            sb.append("', start=");
            sb.append(this.start);
            sb.append(", end=");
            sb.append(this.end);
            sb.append(", attributes=");
            sb.append(this.attributes);
            sb.append(", parent=");
            BlockImpl blockImpl = this.parent;
            sb.append(blockImpl != null ? blockImpl.name : null);
            sb.append(", children=");
            sb.append(this.children);
            sb.append('}');
            return sb.toString();
        }
    }
}
