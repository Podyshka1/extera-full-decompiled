package com.exteragram.messenger.nowplaying;

import com.exteragram.messenger.nowplaying.NowPlayingController;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class NowPlayingController$ItunesTrack$$serializer implements GeneratedSerializer {
    public static final NowPlayingController$ItunesTrack$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        NowPlayingController$ItunesTrack$$serializer nowPlayingController$ItunesTrack$$serializer = new NowPlayingController$ItunesTrack$$serializer();
        INSTANCE = nowPlayingController$ItunesTrack$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.exteragram.messenger.nowplaying.NowPlayingController.ItunesTrack", nowPlayingController$ItunesTrack$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("trackName", true);
        pluginGeneratedSerialDescriptor.addElement("artistName", true);
        pluginGeneratedSerialDescriptor.addElement("collectionName", true);
        pluginGeneratedSerialDescriptor.addElement("artworkUrl100", true);
        pluginGeneratedSerialDescriptor.addElement("previewUrl", true);
        pluginGeneratedSerialDescriptor.addElement("trackTimeMillis", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private NowPlayingController$ItunesTrack$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(LongSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final NowPlayingController.ItunesTrack deserialize(Decoder decoder) {
        int i;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        Long l;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        int i2 = 5;
        String str6 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            String str7 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 0, stringSerializer, null);
            String str8 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 1, stringSerializer, null);
            String str9 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 2, stringSerializer, null);
            String str10 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 3, stringSerializer, null);
            str5 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, stringSerializer, null);
            l = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 5, LongSerializer.INSTANCE, null);
            str4 = str10;
            i = 63;
            str3 = str9;
            str2 = str8;
            str = str7;
        } else {
            boolean z = true;
            int i3 = 0;
            String str11 = null;
            String str12 = null;
            String str13 = null;
            String str14 = null;
            Long l2 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 5;
                        break;
                    case 0:
                        str6 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, str6);
                        i3 |= 1;
                        i2 = 5;
                        break;
                    case 1:
                        str11 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str11);
                        i3 |= 2;
                        break;
                    case 2:
                        str12 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str12);
                        i3 |= 4;
                        break;
                    case 3:
                        str13 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str13);
                        i3 |= 8;
                        break;
                    case 4:
                        str14 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str14);
                        i3 |= 16;
                        break;
                    case 5:
                        l2 = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, i2, LongSerializer.INSTANCE, l2);
                        i3 |= 32;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            i = i3;
            str = str6;
            str2 = str11;
            str3 = str12;
            str4 = str13;
            str5 = str14;
            l = l2;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new NowPlayingController.ItunesTrack(i, str, str2, str3, str4, str5, l, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, NowPlayingController.ItunesTrack value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        NowPlayingController.ItunesTrack.write$Self$TMessagesProj_fullAfatRelease(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public /* bridge */ KSerializer[] typeParametersSerializers() {
        return GeneratedSerializer.CC.$default$typeParametersSerializers(this);
    }
}
