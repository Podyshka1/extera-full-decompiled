package com.google.common.io;

import com.google.common.base.Preconditions;
import com.google.common.graph.SuccessorsFunction;
import java.io.File;
import java.io.IOException;
import okio.ZipFileSystem$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Files {
    private static final SuccessorsFunction<File> FILE_TREE = new SuccessorsFunction() { // from class: com.google.common.io.Files$$ExternalSyntheticLambda0
    };

    public static void createParentDirs(File file) throws IOException {
        Preconditions.checkNotNull(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        ZipFileSystem$$ExternalSyntheticBUOutline0.m929m("Unable to create parent directories of ", file);
    }
}
