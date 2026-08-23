package io.noties.markwon.ext.tables;

import android.text.Spanned;
import android.widget.TextView;
import io.noties.markwon.AbstractMarkwonPlugin;
import io.noties.markwon.MarkwonVisitor;
import io.noties.markwon.SpannableBuilder;
import io.noties.markwon.ext.tables.TableRowSpan;
import io.noties.markwon.ext.tables.TableTheme;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.text.Typography;
import org.commonmark.ext.gfm.tables.TableBlock;
import org.commonmark.ext.gfm.tables.TableBody;
import org.commonmark.ext.gfm.tables.TableCell;
import org.commonmark.ext.gfm.tables.TableHead;
import org.commonmark.ext.gfm.tables.TableRow;
import org.commonmark.ext.gfm.tables.TablesExtension;
import org.commonmark.node.Node;
import org.commonmark.parser.Parser;

/* JADX INFO: loaded from: classes5.dex */
public class TablePlugin extends AbstractMarkwonPlugin {
    private final TableTheme theme;
    private final TableVisitor visitor;

    public interface ThemeConfigure {
        void configureTheme(TableTheme.Builder builder);
    }

    public static TablePlugin create(ThemeConfigure themeConfigure) {
        TableTheme.Builder builder = new TableTheme.Builder();
        themeConfigure.configureTheme(builder);
        return new TablePlugin(builder.build());
    }

    public TablePlugin(TableTheme tableTheme) {
        this.theme = tableTheme;
        this.visitor = new TableVisitor(tableTheme);
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configureParser(Parser.Builder builder) {
        builder.extensions(Collections.singleton(TablesExtension.create()));
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configureVisitor(MarkwonVisitor.Builder builder) {
        this.visitor.configure(builder);
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void beforeRender(Node node) {
        this.visitor.clear();
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void beforeSetText(TextView textView, Spanned spanned) {
        TableRowsScheduler.unschedule(textView);
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void afterSetText(TextView textView) {
        TableRowsScheduler.schedule(textView);
    }

    public static class TableVisitor {
        private List<TableRowSpan.Cell> pendingTableRow;
        private boolean tableRowIsHeader;
        private int tableRows;
        private final TableTheme tableTheme;

        public TableVisitor(TableTheme tableTheme) {
            this.tableTheme = tableTheme;
        }

        public void clear() {
            this.pendingTableRow = null;
            this.tableRowIsHeader = false;
            this.tableRows = 0;
        }

        public void configure(MarkwonVisitor.Builder builder) {
            builder.on(TableBlock.class, new MarkwonVisitor.NodeVisitor<TableBlock>() { // from class: io.noties.markwon.ext.tables.TablePlugin.TableVisitor.5
                @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
                public void visit(MarkwonVisitor markwonVisitor, TableBlock tableBlock) {
                    markwonVisitor.blockStart(tableBlock);
                    int length = markwonVisitor.length();
                    markwonVisitor.visitChildren(tableBlock);
                    markwonVisitor.setSpans(length, new TableSpan());
                    markwonVisitor.blockEnd(tableBlock);
                }
            }).on(TableBody.class, new MarkwonVisitor.NodeVisitor<TableBody>() { // from class: io.noties.markwon.ext.tables.TablePlugin.TableVisitor.4
                @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
                public void visit(MarkwonVisitor markwonVisitor, TableBody tableBody) {
                    markwonVisitor.visitChildren(tableBody);
                    TableVisitor.this.tableRows = 0;
                }
            }).on(TableRow.class, new MarkwonVisitor.NodeVisitor<TableRow>() { // from class: io.noties.markwon.ext.tables.TablePlugin.TableVisitor.3
                @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
                public void visit(MarkwonVisitor markwonVisitor, TableRow tableRow) {
                    TableVisitor.this.visitRow(markwonVisitor, tableRow);
                }
            }).on(TableHead.class, new MarkwonVisitor.NodeVisitor<TableHead>() { // from class: io.noties.markwon.ext.tables.TablePlugin.TableVisitor.2
                @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
                public void visit(MarkwonVisitor markwonVisitor, TableHead tableHead) {
                    TableVisitor.this.visitRow(markwonVisitor, tableHead);
                }
            }).on(TableCell.class, new MarkwonVisitor.NodeVisitor<TableCell>() { // from class: io.noties.markwon.ext.tables.TablePlugin.TableVisitor.1
                @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
                public void visit(MarkwonVisitor markwonVisitor, TableCell tableCell) {
                    int length = markwonVisitor.length();
                    markwonVisitor.visitChildren(tableCell);
                    if (TableVisitor.this.pendingTableRow == null) {
                        TableVisitor.this.pendingTableRow = new ArrayList(2);
                    }
                    TableVisitor.this.pendingTableRow.add(new TableRowSpan.Cell(TableVisitor.tableCellAlignment(tableCell.getAlignment()), markwonVisitor.builder().removeFromEnd(length)));
                    TableVisitor.this.tableRowIsHeader = tableCell.isHeader();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void visitRow(MarkwonVisitor markwonVisitor, Node node) {
            int length = markwonVisitor.length();
            markwonVisitor.visitChildren(node);
            if (this.pendingTableRow != null) {
                SpannableBuilder spannableBuilderBuilder = markwonVisitor.builder();
                int length2 = spannableBuilderBuilder.length();
                boolean z = length2 > 0 && '\n' != spannableBuilderBuilder.charAt(length2 - 1);
                if (z) {
                    markwonVisitor.forceNewLine();
                }
                spannableBuilderBuilder.append(Typography.nbsp);
                TableRowSpan tableRowSpan = new TableRowSpan(this.tableTheme, this.pendingTableRow, this.tableRowIsHeader, this.tableRows % 2 == 1);
                this.tableRows = this.tableRowIsHeader ? 0 : this.tableRows + 1;
                if (z) {
                    length++;
                }
                markwonVisitor.setSpans(length, tableRowSpan);
                this.pendingTableRow = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int tableCellAlignment(TableCell.Alignment alignment) {
            if (alignment == null) {
                return 0;
            }
            int i = C20671.$SwitchMap$org$commonmark$ext$gfm$tables$TableCell$Alignment[alignment.ordinal()];
            int i2 = 1;
            if (i != 1) {
                i2 = 2;
                if (i != 2) {
                    return 0;
                }
            }
            return i2;
        }
    }

    /* JADX INFO: renamed from: io.noties.markwon.ext.tables.TablePlugin$1 */
    public static /* synthetic */ class C20671 {
        static final /* synthetic */ int[] $SwitchMap$org$commonmark$ext$gfm$tables$TableCell$Alignment;

        static {
            int[] iArr = new int[TableCell.Alignment.values().length];
            $SwitchMap$org$commonmark$ext$gfm$tables$TableCell$Alignment = iArr;
            try {
                iArr[TableCell.Alignment.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$commonmark$ext$gfm$tables$TableCell$Alignment[TableCell.Alignment.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
