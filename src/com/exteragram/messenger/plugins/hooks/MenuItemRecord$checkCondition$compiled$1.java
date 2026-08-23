package com.exteragram.messenger.plugins.hooks;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(m754k = 3, mv = {2, 2, 0}, xi = 48)
public final /* synthetic */ class MenuItemRecord$checkCondition$compiled$1 extends FunctionReferenceImpl implements Function1<String, Serializable> {
    public static final MenuItemRecord$checkCondition$compiled$1 INSTANCE = new MenuItemRecord$checkCondition$compiled$1();

    public MenuItemRecord$checkCondition$compiled$1() {
        super(1, MVEL.class, Deobfuscator$exteraGramDev$TMessagesProj.getString(-67012096443951L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-66539650041391L), 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Serializable invoke(String str) {
        return MVEL.compileExpression(str);
    }
}
