package org.videolan.libvlc.util;

import android.annotation.TargetApi;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public class VLCUtil {
    private static final String[] CPU_archs = {"*Pre-v4", "*v4", "*v4T", "v5T", "v5TE", "v5TEJ", "v6", "v6KZ", "v6T2", "v6K", "v7", "*v6-M", "*v6S-M", "*v7E-M", "*v8"};
    private static final int ELF_HEADER_SIZE = 52;
    private static final int EM_386 = 3;
    private static final int EM_AARCH64 = 183;
    private static final int EM_ARM = 40;
    private static final int EM_MIPS = 8;
    private static final int EM_X86_64 = 62;
    private static final int SECTION_HEADER_SIZE = 40;
    private static final int SHT_ARM_ATTRIBUTES = 1879048195;
    public static final String TAG = "VLC/LibVLC/Util";
    private static final String URI_AUTHORIZED_CHARS = "'()*";
    private static String errorMsg = null;
    private static boolean isCompatible = false;
    private static MachineSpecs machineSpecs;

    /* loaded from: classes.dex */
    public static class MachineSpecs {
        public float bogoMIPS;
        public float frequency;
        public boolean hasArmV6;
        public boolean hasArmV7;
        public boolean hasFpu;
        public boolean hasMips;
        public boolean hasNeon;
        public boolean hasX86;
        public boolean is64bits;
        public int processors;
    }

    public static String getErrorMsg() {
        return errorMsg;
    }

    @TargetApi(21)
    public static String[] getABIList21() {
        String[] strArr = Build.SUPPORTED_ABIS;
        return (strArr == null || strArr.length == 0) ? getABIList() : strArr;
    }

    public static String[] getABIList() {
        return new String[]{Build.CPU_ABI, Build.CPU_ABI2};
    }

    /* JADX WARN: Can't wrap try/catch for region: R(29:5|(1:7)(1:228)|8|(4:11|(2:13|14)(2:16|(2:18|19)(4:20|(2:24|(2:26|27)(2:28|(1:30)(1:31)))|22|23))|15|9)|32|33|(2:35|(32:37|(1:225)(1:41)|42|(1:224)(1:46)|47|(1:49)(1:223)|50|(1:52)(1:(1:221)(1:222))|53|(1:55)(1:219)|56|57|58|59|60|61|(3:62|63|(14:65|(11:101|(1:103)(3:104|(2:110|(1:112)(2:113|(2:118|(1:120))(1:117)))|106)|68|(1:97)|72|(1:96)|78|(1:80)|81|(5:85|86|87|88|89)|90)|67|68|(1:70)|97|72|(2:74|76)|96|78|(0)|81|(1:95)(6:83|85|86|87|88|89)|90)(1:121))|122|(1:124)|125|(7:(2:159|(1:162))(1:(1:158)(1:131))|(1:(1:157))(1:134)|135|(1:140)|141|(2:143|(2:150|(1:153))(1:146))(1:154)|(1:149))|163|164|165|167|168|169|170|(3:177|178|179)(1:172)|173|174|175))(1:227)|226|57|58|59|60|61|(4:62|63|(0)(0)|90)|122|(0)|125|(0)|163|164|165|167|168|169|170|(0)(0)|173|174|175) */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01e3, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01e5, code lost:
        r22 = r6;
        r19 = r8;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01eb, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01ec, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01ed, code lost:
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x01f5, code lost:
        r22 = r6;
        r19 = r8;
        r6 = 0;
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x01fb, code lost:
        r15 = null;
        r17 = false;
        r18 = false;
        r20 = false;
        r21 = -1.0f;
        r8 = r7;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x02cb, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x02cc, code lost:
        r16 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x02d0, code lost:
        r16 = r9;
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x02d3, code lost:
        r16 = r9;
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x02d6, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x02d8, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x02d9, code lost:
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x02da, code lost:
        r16 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x02de, code lost:
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x02df, code lost:
        r16 = null;
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x02ff, code lost:
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0300, code lost:
        r16 = null;
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0302, code lost:
        android.util.Log.w(org.videolan.libvlc.util.VLCUtil.TAG, "Could not find maximum CPU frequency!");
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0372, code lost:
        close(r16);
        close(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0378, code lost:
        throw r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01b3 A[Catch: all -> 0x01e1, IOException -> 0x0206, TryCatch #18 {IOException -> 0x0206, all -> 0x01e1, blocks: (B:68:0x0120, B:70:0x0126, B:96:0x017f, B:98:0x0187, B:101:0x0191, B:103:0x0199, B:105:0x01a1, B:108:0x01ab, B:110:0x01b3, B:113:0x01ba, B:115:0x01c8, B:116:0x01ce, B:73:0x0132, B:76:0x013b, B:79:0x0145, B:82:0x014f, B:85:0x0158, B:88:0x0163, B:90:0x016b, B:93:0x0175), top: B:217:0x0120 }] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x02b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0206 A[EDGE_INSN: B:232:0x0206->B:132:0x0206 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0126 A[Catch: all -> 0x01e1, IOException -> 0x0206, TryCatch #18 {IOException -> 0x0206, all -> 0x01e1, blocks: (B:68:0x0120, B:70:0x0126, B:96:0x017f, B:98:0x0187, B:101:0x0191, B:103:0x0199, B:105:0x01a1, B:108:0x01ab, B:110:0x01b3, B:113:0x01ba, B:115:0x01c8, B:116:0x01ce, B:73:0x0132, B:76:0x013b, B:79:0x0145, B:82:0x014f, B:85:0x0158, B:88:0x0163, B:90:0x016b, B:93:0x0175), top: B:217:0x0120 }] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v21, types: [java.io.Closeable, java.io.FileReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v48 */
    /* JADX WARN: Type inference failed for: r6v49 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v60 */
    /* JADX WARN: Type inference failed for: r6v61 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean hasCompatibleCPU(android.content.Context r23) {
        /*
            Method dump skipped, instructions count: 892
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.videolan.libvlc.util.VLCUtil.hasCompatibleCPU(android.content.Context):boolean");
    }

    public static MachineSpecs getMachineSpecs() {
        return machineSpecs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ElfData {
        String att_arch;
        boolean att_fpu;
        int e_machine;
        int e_shnum;
        int e_shoff;
        boolean is64bits;
        ByteOrder order;
        int sh_offset;
        int sh_size;

        private ElfData() {
        }
    }

    @TargetApi(9)
    private static File searchLibrary(ApplicationInfo applicationInfo) {
        String[] split = (applicationInfo.flags & 1) != 0 ? System.getProperty("java.library.path").split(":") : new String[]{applicationInfo.nativeLibraryDir};
        if (split[0] == null) {
            Log.e(TAG, "can't find library path");
            return null;
        }
        for (String str : split) {
            File file = new File(str, "libvlcjni.so");
            if (file.exists() && file.canRead()) {
                return file;
            }
        }
        Log.e(TAG, "WARNING: Can't find shared library");
        return null;
    }

    private static ElfData readLib(File file) {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        try {
            try {
                randomAccessFile2 = new RandomAccessFile(file, "r");
                try {
                    ElfData elfData = new ElfData();
                    if (!readHeader(randomAccessFile2, elfData)) {
                        close(randomAccessFile2);
                        return null;
                    }
                    int i = elfData.e_machine;
                    if (i != 3 && i != 8) {
                        if (i == 40) {
                            randomAccessFile2.close();
                            RandomAccessFile randomAccessFile3 = new RandomAccessFile(file, "r");
                            try {
                                if (!readSection(randomAccessFile3, elfData)) {
                                    close(randomAccessFile3);
                                    return null;
                                }
                                randomAccessFile3.close();
                                randomAccessFile2 = new RandomAccessFile(file, "r");
                                if (readArmAttributes(randomAccessFile2, elfData)) {
                                    close(randomAccessFile2);
                                    return elfData;
                                }
                                close(randomAccessFile2);
                                return null;
                            } catch (IOException e) {
                                e = e;
                                randomAccessFile2 = randomAccessFile3;
                                e.printStackTrace();
                                close(randomAccessFile2);
                                return null;
                            } catch (Throwable th) {
                                th = th;
                                randomAccessFile = randomAccessFile3;
                                close(randomAccessFile);
                                throw th;
                            }
                        } else if (i != EM_X86_64 && i != EM_AARCH64) {
                            close(randomAccessFile2);
                            return null;
                        }
                    }
                    close(randomAccessFile2);
                    return elfData;
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            e = e3;
            randomAccessFile2 = null;
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    private static boolean readHeader(RandomAccessFile randomAccessFile, ElfData elfData) throws IOException {
        ByteOrder byteOrder;
        byte[] bArr = new byte[ELF_HEADER_SIZE];
        randomAccessFile.readFully(bArr);
        if (bArr[0] != Byte.MAX_VALUE || bArr[1] != 69 || bArr[2] != 76 || bArr[3] != 70 || (bArr[4] != 1 && bArr[4] != 2)) {
            Log.e(TAG, "ELF header invalid");
            return false;
        }
        elfData.is64bits = bArr[4] == 2;
        if (bArr[5] == 1) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        elfData.order = byteOrder;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.order(elfData.order);
        elfData.e_machine = wrap.getShort(18);
        elfData.e_shoff = wrap.getInt(32);
        elfData.e_shnum = wrap.getShort(48);
        return true;
    }

    private static boolean readSection(RandomAccessFile randomAccessFile, ElfData elfData) throws IOException {
        byte[] bArr = new byte[40];
        randomAccessFile.seek(elfData.e_shoff);
        for (int i = 0; i < elfData.e_shnum; i++) {
            randomAccessFile.readFully(bArr);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.order(elfData.order);
            if (wrap.getInt(4) == SHT_ARM_ATTRIBUTES) {
                elfData.sh_offset = wrap.getInt(16);
                elfData.sh_size = wrap.getInt(20);
                return true;
            }
        }
        return false;
    }

    private static boolean readArmAttributes(RandomAccessFile randomAccessFile, ElfData elfData) throws IOException {
        byte[] bArr = new byte[elfData.sh_size];
        randomAccessFile.seek(elfData.sh_offset);
        randomAccessFile.readFully(bArr);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.order(elfData.order);
        if (wrap.get() != 65) {
            return false;
        }
        while (true) {
            if (wrap.remaining() <= 0) {
                break;
            }
            int position = wrap.position();
            int i = wrap.getInt();
            if (getString(wrap).equals("aeabi")) {
                while (wrap.position() < position + i) {
                    int position2 = wrap.position();
                    byte b = wrap.get();
                    int i2 = wrap.getInt();
                    if (b != 1) {
                        wrap.position(position2 + i2);
                    } else {
                        while (wrap.position() < position2 + i2) {
                            int uleb128 = getUleb128(wrap);
                            if (uleb128 == 6) {
                                elfData.att_arch = CPU_archs[getUleb128(wrap)];
                            } else if (uleb128 == 27) {
                                getUleb128(wrap);
                                elfData.att_fpu = true;
                            } else {
                                int i3 = uleb128 % 128;
                                if (i3 == 4 || i3 == 5 || i3 == 32 || (i3 > 32 && (i3 & 1) != 0)) {
                                    getString(wrap);
                                } else {
                                    getUleb128(wrap);
                                }
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    private static String getString(ByteBuffer byteBuffer) {
        char c;
        StringBuilder sb = new StringBuilder(byteBuffer.limit());
        while (byteBuffer.remaining() > 0 && (c = (char) byteBuffer.get()) != 0) {
            sb.append(c);
        }
        return sb.toString();
    }

    private static int getUleb128(ByteBuffer byteBuffer) {
        byte b;
        int i = 0;
        do {
            b = byteBuffer.get();
            i = (i << 7) | (b & Byte.MAX_VALUE);
        } while ((b & 128) > 0);
        return i;
    }

    public static Uri UriFromMrl(String str) {
        int parseInt;
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        StringBuilder sb = new StringBuilder(charArray.length * 2);
        int i = 0;
        while (i < charArray.length) {
            char c = charArray[i];
            if (c == '%' && charArray.length - i >= 3) {
                try {
                    parseInt = Integer.parseInt(new String(charArray, i + 1, 2), 16);
                } catch (NumberFormatException unused) {
                }
                if (URI_AUTHORIZED_CHARS.indexOf(parseInt) != -1) {
                    sb.append((char) parseInt);
                    i += 2;
                    i++;
                }
            }
            sb.append(c);
            i++;
        }
        return Uri.parse(sb.toString());
    }

    public static String encodeVLCUri(@NonNull Uri uri) {
        return encodeVLCString(uri.toString());
    }

    public static String encodeVLCString(@NonNull String str) {
        char[] charArray = str.toCharArray();
        StringBuilder sb = new StringBuilder(charArray.length * 2);
        for (char c : charArray) {
            if (URI_AUTHORIZED_CHARS.indexOf(c) != -1) {
                sb.append("%");
                sb.append(Integer.toHexString(c));
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    private static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
