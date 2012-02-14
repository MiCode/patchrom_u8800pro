.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field private static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field private static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field private static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sGsmSpaceChar:I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 1183
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 1376
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 1509
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1511
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x107001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1512
    const v1, 0x107001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .end local v0           #r:Landroid/content/res/Resources;
    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1513
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v5, v0

    .line 1514
    .local v5, numTables:I
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v4, v0

    .line 1515
    .local v4, numShiftTables:I
    if-eq v5, v4, :cond_0

    .line 1516
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: language tables array length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != shift tables array length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1521
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1527
    :goto_0
    new-array v0, v5, [Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 1528
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 1529
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v6, v0, v2

    .line 1531
    .local v6, table:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 1532
    .local v7, tableLen:I
    if-eqz v7, :cond_1

    const/16 v0, 0x80

    if-eq v7, v0, :cond_1

    .line 1533
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: language tables index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (expected 128 or 0)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_1
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1538
    .local v1, charToGsmTable:Landroid/util/SparseIntArray;
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v1, v0, v2

    .line 1539
    const/4 v0, 0x0

    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .local v3, j:I
    :goto_2
    if-ge v3, v7, :cond_3

    .line 1540
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1541
    .local v0, c:C
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1539
    add-int/lit8 v0, v3, 0x1

    .end local v3           #j:I
    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .line 1524
    .end local v1           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v6           #table:Ljava/lang/String;
    .end local v7           #tableLen:I
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_0

    .line 1528
    .restart local v1       #charToGsmTable:Landroid/util/SparseIntArray;
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v6       #table:Ljava/lang/String;
    .restart local v7       #tableLen:I
    :cond_3
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 1545
    .end local v1           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v3           #j:I
    .end local v6           #table:Ljava/lang/String;
    .end local v7           #tableLen:I
    :cond_4
    new-array v0, v5, [Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 1546
    const/4 v0, 0x0

    .end local v2           #i:I
    .restart local v0       #i:I
    move v2, v0

    .end local v0           #i:I
    .end local v5           #numTables:I
    .restart local v2       #i:I
    :goto_3
    if-ge v2, v4, :cond_8

    .line 1547
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v5, v0, v2

    .line 1549
    .local v5, shiftTable:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 1550
    .local v6, shiftTableLen:I
    if-eqz v6, :cond_5

    const/16 v0, 0x80

    if-eq v6, v0, :cond_5

    .line 1551
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: language shift tables index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (expected 128 or 0)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_5
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1556
    .local v1, charToShiftTable:Landroid/util/SparseIntArray;
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v1, v0, v2

    .line 1557
    const/4 v0, 0x0

    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .restart local v3       #j:I
    :goto_4
    if-ge v3, v6, :cond_7

    .line 1558
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1559
    .local v0, c:C
    const/16 v7, 0x20

    if-eq v0, v7, :cond_6

    .line 1560
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1557
    :cond_6
    add-int/lit8 v0, v3, 0x1

    .end local v3           #j:I
    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .restart local v3       #j:I
    goto :goto_4

    .line 1546
    :cond_7
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_3

    .line 1568
    .end local v1           #charToShiftTable:Landroid/util/SparseIntArray;
    .end local v3           #j:I
    .end local v5           #shiftTable:Ljava/lang/String;
    .end local v6           #shiftTableLen:I
    :cond_8
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1569
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 1570
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1571
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 1574
    const/4 v0, 0x0

    .line 1576
    .end local v2           #i:I
    .restart local v0       #i:I
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1577
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1578
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1579
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1580
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1581
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1582
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1583
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xec

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1584
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1585
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1586
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1587
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1588
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1589
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1590
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1591
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1593
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1594
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1595
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1596
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1597
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1598
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1599
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1600
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1601
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1602
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1603
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1604
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v3, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1605
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1606
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1607
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1608
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1610
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1611
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1612
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1613
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1614
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1615
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1616
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1617
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1618
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x28

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1619
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x29

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1620
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1621
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1622
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1623
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1624
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1625
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1627
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1628
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1629
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1630
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1631
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1632
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1633
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1634
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1635
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1636
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1637
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1638
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1639
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1640
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1641
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1642
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1644
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1645
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1646
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1647
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1648
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1649
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1650
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1651
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1652
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1653
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1654
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1655
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1656
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1657
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1658
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1659
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1661
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1662
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1663
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1664
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1665
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1666
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1667
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1668
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1669
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1670
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1671
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1672
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1673
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1674
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1675
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1676
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1678
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xbf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1679
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1680
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1681
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1682
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1683
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1684
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1685
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1686
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1687
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1688
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1689
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1690
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1691
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1692
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1693
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1695
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1696
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1697
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1698
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1699
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1700
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1701
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1702
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1703
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1704
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1705
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1706
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1707
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1708
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1709
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1710
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1713
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .end local v0           #i:I
    const/16 v1, 0xc

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1714
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1715
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7b

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1716
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7d

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1717
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1718
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5b

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1719
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7e

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1720
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5d

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1721
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7c

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1722
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x20ac

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1724
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1725
    .local v1, size:I
    const/4 v0, 0x0

    .end local v4           #numShiftTables:I
    .local v0, j:I
    :goto_5
    if-ge v0, v1, :cond_9

    .line 1726
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1725
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1729
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .end local v0           #j:I
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1730
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_6
    if-ge v0, v1, :cond_a

    .line 1731
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1730
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1735
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .end local v0           #j:I
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    .end local v1           #size:I
    move-result v0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 1736
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UCStoGsm7(C)I
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, -0x1

    .line 607
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 608
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    .line 609
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 610
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 613
    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method public static charToGsm(C)I
    .locals 4
    .parameter "c"

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 92
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    goto :goto_0
.end method

.method public static charToGsm(CZ)I
    .locals 5
    .parameter "c"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 115
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 117
    .local v0, ret:I
    if-ne v0, v2, :cond_2

    .line 118
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 120
    if-ne v0, v2, :cond_1

    .line 121
    if-eqz p1, :cond_0

    .line 122
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 124
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 127
    :cond_1
    const/16 v1, 0x1b

    goto :goto_0

    :cond_2
    move v1, v0

    .line 131
    goto :goto_0
.end method

.method public static charToGsm7bit(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 623
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 625
    .local v0, ret:I
    if-ne v2, v0, :cond_1

    .line 626
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 627
    if-ne v2, v0, :cond_0

    move v1, v2

    .line 634
    :goto_0
    return v1

    .line 630
    :cond_0
    const/16 v1, 0x1b

    goto :goto_0

    :cond_1
    move v1, v0

    .line 634
    goto :goto_0
.end method

.method public static charToGsmExtended(C)I
    .locals 5
    .parameter "c"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 145
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 147
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 148
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 151
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public static countGsmSeptets(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 705
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 708
    :goto_0
    return v1

    .line 706
    :catch_0
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 708
    goto :goto_0
.end method

.method public static countGsmSeptets(CZ)I
    .locals 4
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 723
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    move v0, v3

    .line 735
    :goto_0
    return v0

    .line 727
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 728
    const/4 v0, 0x2

    goto :goto_0

    .line 731
    :cond_1
    if-eqz p1, :cond_2

    .line 732
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    :cond_2
    move v0, v3

    .line 735
    goto :goto_0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 10
    .parameter "s"
    .parameter "use7bitOnly"

    .prologue
    .line 905
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v0, v0

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v1, v1

    add-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 906
    new-instance v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 907
    .local v0, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result p0

    .line 908
    .local p0, septets:I
    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    .line 909
    .end local p1
    const/4 p0, 0x0

    .line 1036
    .end local v0           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local p0           #septets:I
    :goto_0
    return-object p0

    .line 911
    .restart local v0       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local p0       #septets:I
    :cond_0
    const/4 p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 912
    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 913
    const/16 p1, 0xa0

    if-le p0, p1, :cond_1

    .line 914
    add-int/lit16 p1, p0, 0x98

    div-int/lit16 p1, p1, 0x99

    iput p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 916
    iget p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 p1, p1, 0x99

    sub-int p0, p1, p0

    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 922
    .end local p0           #septets:I
    :goto_1
    const/4 p0, 0x1

    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move-object p0, v0

    .line 923
    goto :goto_0

    .line 919
    .restart local p0       #septets:I
    :cond_1
    const/4 p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 920
    const/16 p1, 0xa0

    sub-int p0, p1, p0

    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1

    .line 926
    .end local v0           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .local p0, s:Ljava/lang/CharSequence;
    .restart local p1
    :cond_2
    sget v5, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 927
    .local v5, maxSingleShiftCode:I
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 931
    .local v4, lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_4

    aget v1, v0, v2

    .line 934
    .local v1, i:I
    if-eqz v1, :cond_3

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 935
    new-instance v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i$:I
    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .restart local v2       #i$:I
    goto :goto_2

    .line 939
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 941
    .local v7, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .local v1, i:I
    :goto_3
    if-ge v1, v7, :cond_d

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 942
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 943
    .local v0, c:C
    const/16 v2, 0x1b

    if-ne v0, v2, :cond_6

    .line 944
    const-string v0, "GSM"

    .end local v0           #c:C
    const-string v2, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_3

    .line 948
    .local v0, c:C
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 949
    .local v3, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v8, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    aget-object v6, v6, v8

    const/4 v8, -0x1

    invoke-virtual {v6, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 950
    .local v6, tableIndex:I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_b

    .line 952
    const/4 v6, 0x0

    .local v6, table:I
    move v8, v6

    .end local v6           #table:I
    .local v8, table:I
    :goto_5
    if-gt v8, v5, :cond_a

    .line 953
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v6, v6, v8

    const/4 v9, -0x1

    if-eq v6, v9, :cond_7

    .line 954
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v6, v6, v8

    const/4 v9, -0x1

    invoke-virtual {v6, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 955
    .local v6, shiftTableIndex:I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_9

    .line 956
    if-eqz p1, :cond_8

    .line 958
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .end local v6           #shiftTableIndex:I
    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    .line 959
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    .line 952
    :cond_7
    :goto_6
    add-int/lit8 v6, v8, 0x1

    .end local v8           #table:I
    .local v6, table:I
    move v8, v6

    .end local v6           #table:I
    .restart local v8       #table:I
    goto :goto_5

    .line 962
    .local v6, shiftTableIndex:I
    :cond_8
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .end local v6           #shiftTableIndex:I
    const/4 v9, -0x1

    aput v9, v6, v8

    goto :goto_6

    .line 966
    .restart local v6       #shiftTableIndex:I
    :cond_9
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .end local v6           #shiftTableIndex:I
    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x2

    aput v9, v6, v8

    goto :goto_6

    :cond_a
    move v3, v8

    .line 952
    .end local v8           #table:I
    .local v3, table:I
    goto :goto_4

    .line 972
    .local v3, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .local v6, tableIndex:I
    :cond_b
    const/4 v6, 0x0

    .local v6, table:I
    :goto_7
    if-gt v6, v5, :cond_1b

    .line 973
    iget-object v8, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v8, v8, v6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_c

    .line 974
    iget-object v8, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v9, v8, v6

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v6

    .line 972
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 982
    .end local v0           #c:C
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v6           #table:I
    :cond_d
    new-instance v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v7           #sz:I
    invoke-direct {v7}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 983
    .local v7, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const p0, 0x7fffffff

    iput p0, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 984
    .end local p0           #s:Ljava/lang/CharSequence;
    const/4 p0, 0x1

    iput p0, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 985
    const v0, 0x7fffffff

    .line 986
    .local v0, minUnencodableCount:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    move v1, v0

    .end local v0           #minUnencodableCount:I
    .end local v4           #lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    .local v1, minUnencodableCount:I
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 987
    .local v0, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/4 v2, 0x0

    .local v2, shiftTable:I
    move v6, v2

    .end local v2           #shiftTable:I
    .local v6, shiftTable:I
    :goto_8
    if-gt v6, v5, :cond_e

    .line 988
    iget-object v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v3, v2, v6

    .line 989
    .local v3, septets:I
    const/4 v2, -0x1

    if-ne v3, v2, :cond_10

    .line 987
    :cond_f
    :goto_9
    add-int/lit8 v2, v6, 0x1

    .end local v6           #shiftTable:I
    .restart local v2       #shiftTable:I
    move v6, v2

    .end local v2           #shiftTable:I
    .restart local v6       #shiftTable:I
    goto :goto_8

    .line 993
    :cond_10
    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-eqz v2, :cond_14

    if-eqz v6, :cond_14

    .line 994
    const/16 v2, 0x8

    .local v2, udhLength:I
    move v8, v2

    .line 1002
    .end local v2           #udhLength:I
    .local v8, udhLength:I
    :goto_a
    add-int v2, v3, v8

    const/16 v4, 0xa0

    if-le v2, v4, :cond_17

    .line 1003
    if-nez v8, :cond_1a

    .line 1004
    const/4 v2, 0x1

    .line 1006
    .end local v8           #udhLength:I
    .restart local v2       #udhLength:I
    :goto_b
    add-int/lit8 v8, v2, 0x6

    .line 1007
    .end local v2           #udhLength:I
    .restart local v8       #udhLength:I
    const/16 v2, 0xa0

    sub-int v4, v2, v8

    .line 1008
    .local v4, septetsPerMessage:I
    add-int v2, v3, v4

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    div-int/2addr v2, v4

    .line 1009
    .local v2, msgCount:I
    mul-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 1015
    .local v4, septetsRemaining:I
    :goto_c
    iget-object v8, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    .end local v8           #udhLength:I
    aget v8, v8, v6

    .line 1016
    .local v8, unencodableCount:I
    if-eqz p1, :cond_11

    if-gt v8, v1, :cond_f

    .line 1019
    :cond_11
    if-eqz p1, :cond_12

    if-lt v8, v1, :cond_13

    :cond_12
    iget v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-lt v2, v9, :cond_13

    iget v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-ne v2, v9, :cond_f

    iget v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    if-le v4, v9, :cond_f

    .line 1022
    :cond_13
    move v1, v8

    .line 1023
    iput v2, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1024
    iput v3, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1025
    iput v4, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1026
    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    .end local v2           #msgCount:I
    iput v2, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    .line 1027
    iput v6, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    goto :goto_9

    .line 995
    .end local v4           #septetsRemaining:I
    .end local v8           #unencodableCount:I
    :cond_14
    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-nez v2, :cond_15

    if-eqz v6, :cond_16

    .line 996
    :cond_15
    const/4 v2, 0x5

    .local v2, udhLength:I
    move v8, v2

    .end local v2           #udhLength:I
    .local v8, udhLength:I
    goto :goto_a

    .line 998
    .end local v8           #udhLength:I
    :cond_16
    const/4 v2, 0x0

    .restart local v2       #udhLength:I
    move v8, v2

    .end local v2           #udhLength:I
    .restart local v8       #udhLength:I
    goto :goto_a

    .line 1011
    :cond_17
    const/4 v2, 0x1

    .line 1012
    .local v2, msgCount:I
    const/16 v4, 0xa0

    sub-int/2addr v4, v8

    sub-int/2addr v4, v3

    .restart local v4       #septetsRemaining:I
    goto :goto_c

    .line 1032
    .end local v0           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v2           #msgCount:I
    .end local v3           #septets:I
    .end local v4           #septetsRemaining:I
    .end local v6           #shiftTable:I
    .end local v8           #udhLength:I
    :cond_18
    iget p0, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .end local p0           #i$:Ljava/util/Iterator;
    const p1, 0x7fffffff

    if-ne p0, p1, :cond_19

    .line 1033
    .end local p1
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_19
    move-object p0, v7

    .line 1036
    goto/16 :goto_0

    .restart local v0       #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .restart local v3       #septets:I
    .restart local v6       #shiftTable:I
    .restart local v8       #udhLength:I
    .restart local p0       #i$:Ljava/util/Iterator;
    .restart local p1
    :cond_1a
    move v2, v8

    .end local v8           #udhLength:I
    .local v2, udhLength:I
    goto :goto_b

    .local v0, c:C
    .local v1, i:I
    .local v2, i$:Ljava/util/Iterator;
    .local v3, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .local v4, lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    .local v6, table:I
    .local v7, sz:I
    .local p0, s:Ljava/lang/CharSequence;
    :cond_1b
    move v3, v6

    .end local v6           #table:I
    .local v3, table:I
    goto/16 :goto_4
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .locals 9
    .parameter "s"
    .parameter "use7bitOnly"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    const/4 v8, -0x1

    .line 861
    const/4 v3, 0x0

    .line 862
    .local v3, count:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 863
    .local v5, sz:I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p2

    .line 864
    .local v1, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 865
    .local v2, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 866
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 867
    .local v0, c:C
    const/16 v6, 0x1b

    if-ne v0, v6, :cond_0

    .line 868
    const-string v6, "GSM"

    const-string v7, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {v1, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 872
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 873
    :cond_1
    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v8, :cond_2

    .line 874
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 875
    :cond_2
    if-eqz p1, :cond_3

    .line 876
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v6, v8

    .line 881
    .end local v0           #c:C
    :goto_2
    return v6

    :cond_4
    move v6, v3

    goto :goto_2
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "limit"
    .parameter "langTable"
    .parameter "langShiftTable"

    .prologue
    const/4 v7, -0x1

    .line 1056
    const/4 v0, 0x0

    .line 1057
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1059
    .local v5, size:I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 1060
    .local v2, charToLangTable:Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p4

    .line 1061
    .local v1, charToLangShiftTable:Landroid/util/SparseIntArray;
    move v4, p1

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 1062
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1063
    .local v3, encodedSeptet:I
    if-ne v3, v7, :cond_1

    .line 1064
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1065
    if-ne v3, v7, :cond_0

    .line 1067
    add-int/lit8 v0, v0, 0x1

    .line 1074
    :goto_1
    if-le v0, p2, :cond_2

    move v6, v4

    .line 1078
    .end local v3           #encodedSeptet:I
    :goto_2
    return v6

    .line 1069
    .restart local v3       #encodedSeptet:I
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1072
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1061
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #encodedSeptet:I
    :cond_3
    move v6, v5

    .line 1078
    goto :goto_2
.end method

.method static declared-synchronized getEnabledLockingShiftTables()[I
    .locals 2

    .prologue
    .line 1128
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getEnabledSingleShiftTables()[I
    .locals 2

    .prologue
    .line 1117
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"

    .prologue
    const/4 v3, 0x0

    .line 386
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .locals 8
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"
    .parameter "languageTable"
    .parameter "shiftTable"

    .prologue
    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 409
    .local v3, ret:Ljava/lang/StringBuilder;
    if-ltz p4, :cond_0

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v0, v0

    if-le p4, v0, :cond_1

    .line 410
    :cond_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown language table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4
    const-string v1, ", using default"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 p4, 0x0

    .line 413
    .restart local p4
    :cond_1
    if-ltz p5, :cond_2

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v0, v0

    if-le p5, v0, :cond_3

    .line 414
    :cond_2
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown single shift table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    .end local p5
    const-string v1, ", using default"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 p5, 0x0

    .line 419
    .restart local p5
    :cond_3
    const/4 v2, 0x0

    .line 420
    .local v2, prevCharWasEscape:Z
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v0, v0, p4

    .line 421
    .local v0, languageTableToChar:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v4, v1, p5

    .line 423
    .local v4, shiftTableToChar:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 424
    const-string v0, "GSM"

    .end local v0           #languageTableToChar:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no language table for code "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4
    const-string v1, ", using default"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sget-object p4, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p4, p4, v0

    .local p4, languageTableToChar:Ljava/lang/String;
    move-object v1, p4

    .line 427
    .end local p4           #languageTableToChar:Ljava/lang/String;
    .local v1, languageTableToChar:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 428
    const-string p4, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no single shift table for code "

    .end local v4           #shiftTableToChar:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    .end local p5
    const-string v0, ", using default"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget-object p4, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 p5, 0x0

    aget-object p4, p4, p5

    .local p4, shiftTableToChar:Ljava/lang/String;
    move-object v5, p4

    .line 432
    .end local p4           #shiftTableToChar:Ljava/lang/String;
    .local v5, shiftTableToChar:Ljava/lang/String;
    :goto_1
    const/4 p4, 0x0

    .local p4, i:I
    move v0, p4

    .end local p4           #i:I
    .local v0, i:I
    :goto_2
    if-ge v0, p2, :cond_8

    .line 433
    mul-int/lit8 p4, v0, 0x7

    add-int/2addr p4, p3

    .line 435
    .local p4, bitOffset:I
    div-int/lit8 p5, p4, 0x8

    .line 436
    .local p5, byteOffset:I
    rem-int/lit8 v4, p4, 0x8

    .line 439
    .local v4, shift:I
    add-int p4, p1, p5

    aget-byte p4, p0, p4

    .end local p4           #bitOffset:I
    shr-int/2addr p4, v4

    and-int/lit8 p4, p4, 0x7f

    .line 442
    .local p4, gsmVal:I
    const/4 v6, 0x1

    if-le v4, v6, :cond_9

    .line 444
    const/16 v6, 0x7f

    const/4 v7, 0x1

    sub-int v7, v4, v7

    shr-int/2addr v6, v7

    and-int/2addr p4, v6

    .line 446
    add-int/2addr p5, p1

    add-int/lit8 p5, p5, 0x1

    aget-byte p5, p0, p5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .end local p5           #byteOffset:I
    const/16 v6, 0x8

    sub-int v4, v6, v4

    shl-int/2addr p5, v4

    and-int/lit8 p5, p5, 0x7f

    or-int/2addr p4, p5

    move p5, p4

    .line 449
    .end local v4           #shift:I
    .end local p4           #gsmVal:I
    .local p5, gsmVal:I
    :goto_3
    if-eqz v2, :cond_6

    .line 450
    const/16 p4, 0x1b

    if-ne p5, p4, :cond_4

    .line 451
    const/16 p4, 0x20

    :try_start_1
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    :goto_4
    const/4 p4, 0x0

    .end local v2           #prevCharWasEscape:Z
    .local p4, prevCharWasEscape:Z
    move p5, p4

    .line 432
    .end local p4           #prevCharWasEscape:Z
    .local p5, prevCharWasEscape:Z
    :goto_5
    add-int/lit8 p4, v0, 0x1

    .end local v0           #i:I
    .local p4, i:I
    move v0, p4

    .end local p4           #i:I
    .restart local v0       #i:I
    move v2, p5

    .end local p5           #prevCharWasEscape:Z
    .restart local v2       #prevCharWasEscape:Z
    goto :goto_2

    .line 453
    .local p5, gsmVal:I
    :cond_4
    invoke-virtual {v5, p5}, Ljava/lang/String;->charAt(I)C

    move-result p4

    .line 454
    .local p4, c:C
    const/16 v4, 0x20

    if-ne p4, v4, :cond_5

    .line 455
    invoke-virtual {v1, p5}, Ljava/lang/String;->charAt(I)C

    move-result p4

    .end local p4           #c:C
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 467
    :catch_0
    move-exception p0

    move p1, v2

    .line 468
    .end local v0           #i:I
    .end local v1           #languageTableToChar:Ljava/lang/String;
    .end local v2           #prevCharWasEscape:Z
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    .end local p5           #gsmVal:I
    .local p0, ex:Ljava/lang/RuntimeException;
    .local p1, prevCharWasEscape:Z
    :goto_6
    const-string p1, "GSM"

    .end local p1           #prevCharWasEscape:Z
    const-string p2, "Error GSM 7 bit packed: "

    .end local p2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    const/4 p0, 0x0

    .line 472
    .end local p0           #ex:Ljava/lang/RuntimeException;
    :goto_7
    return-object p0

    .line 457
    .restart local v0       #i:I
    .restart local v1       #languageTableToChar:Ljava/lang/String;
    .restart local v2       #prevCharWasEscape:Z
    .restart local v5       #shiftTableToChar:Ljava/lang/String;
    .local p0, pdu:[B
    .local p1, offset:I
    .restart local p2
    .restart local p4       #c:C
    .restart local p5       #gsmVal:I
    :cond_5
    :try_start_2
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 461
    .end local p4           #c:C
    :cond_6
    const/16 p4, 0x1b

    if-ne p5, p4, :cond_7

    .line 462
    const/4 p4, 0x1

    .end local v2           #prevCharWasEscape:Z
    .local p4, prevCharWasEscape:Z
    move p5, p4

    .end local p4           #prevCharWasEscape:Z
    .local p5, prevCharWasEscape:Z
    goto :goto_5

    .line 464
    .restart local v2       #prevCharWasEscape:Z
    .local p5, gsmVal:I
    :cond_7
    invoke-virtual {v1, p5}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move p5, v2

    .end local v2           #prevCharWasEscape:Z
    .local p5, prevCharWasEscape:Z
    goto :goto_5

    .line 472
    .end local p5           #prevCharWasEscape:Z
    .restart local v2       #prevCharWasEscape:Z
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 467
    .end local v0           #i:I
    .end local v1           #languageTableToChar:Ljava/lang/String;
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    :catch_1
    move-exception p0

    move p1, v2

    .end local v2           #prevCharWasEscape:Z
    .local p1, prevCharWasEscape:Z
    goto :goto_6

    .restart local v0       #i:I
    .restart local v1       #languageTableToChar:Ljava/lang/String;
    .restart local v2       #prevCharWasEscape:Z
    .restart local v4       #shift:I
    .restart local v5       #shiftTableToChar:Ljava/lang/String;
    .local p1, offset:I
    .local p4, gsmVal:I
    .local p5, byteOffset:I
    :cond_9
    move p5, p4

    .end local p4           #gsmVal:I
    .local p5, gsmVal:I
    goto :goto_3

    .end local v0           #i:I
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    .local v4, shiftTableToChar:Ljava/lang/String;
    .local p5, shiftTable:I
    :cond_a
    move-object v5, v4

    .end local v4           #shiftTableToChar:Ljava/lang/String;
    .restart local v5       #shiftTableToChar:Ljava/lang/String;
    goto :goto_1

    .end local v1           #languageTableToChar:Ljava/lang/String;
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    .local v0, languageTableToChar:Ljava/lang/String;
    .restart local v4       #shiftTableToChar:Ljava/lang/String;
    .local p4, languageTable:I
    :cond_b
    move-object v1, v0

    .end local v0           #languageTableToChar:Ljava/lang/String;
    .restart local v1       #languageTableToChar:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 491
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v2, v7, v8

    .line 492
    .local v2, languageTableToChar:Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v6, v7, v8

    .line 494
    .local v6, shiftTableToChar:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 495
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 496
    .local v3, prevWasEscape:Z
    move v1, p1

    .local v1, i:I
    :goto_0
    add-int v7, p1, p2

    if-ge v1, v7, :cond_0

    .line 499
    aget-byte v7, p0, v1

    and-int/lit16 v0, v7, 0xff

    .line 501
    .local v0, c:I
    const/16 v7, 0xff

    if-ne v0, v7, :cond_1

    .line 529
    .end local v0           #c:I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 503
    .restart local v0       #c:I
    :cond_1
    const/16 v7, 0x1b

    if-ne v0, v7, :cond_3

    .line 504
    if-eqz v3, :cond_2

    .line 508
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    const/4 v3, 0x0

    .line 496
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 514
    :cond_3
    if-eqz v3, :cond_5

    .line 515
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 516
    .local v5, shiftChar:C
    if-ne v5, v9, :cond_4

    .line 518
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    .end local v5           #shiftChar:C
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 520
    .restart local v5       #shiftChar:C
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 523
    .end local v5           #shiftChar:C
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static gsmExtendedToChar(I)C
    .locals 4
    .parameter "gsmChar"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x20

    .line 190
    const/16 v1, 0x1b

    if-ne p0, v1, :cond_0

    move v1, v2

    .line 200
    :goto_0
    return v1

    .line 192
    :cond_0
    if-ltz p0, :cond_2

    const/16 v1, 0x80

    if-ge p0, v1, :cond_2

    .line 193
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 194
    .local v0, c:C
    if-ne v0, v2, :cond_1

    .line 195
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 197
    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v1, v2

    .line 200
    goto :goto_0
.end method

.method public static gsmToChar(I)C
    .locals 2
    .parameter "gsmChar"

    .prologue
    .line 168
    if-ltz p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 169
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private static packSmsChar([BII)V
    .locals 4
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 363
    div-int/lit8 v0, p1, 0x8

    .line 364
    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .line 366
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 368
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 369
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x8

    sub-int/2addr v2, v1

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 371
    :cond_0
    return-void
.end method

.method static declared-synchronized setEnabledLockingShiftTables([I)V
    .locals 2
    .parameter "tables"

    .prologue
    .line 1106
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    monitor-exit v0

    return-void

    .line 1106
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setEnabledSingleShiftTables([I)V
    .locals 3
    .parameter "tables"

    .prologue
    .line 1089
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1091
    array-length v1, p0

    if-lez v1, :cond_0

    .line 1092
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, p0, v1

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    :goto_0
    monitor-exit v0

    return-void

    .line 1094
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1089
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 262
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .locals 2
    .parameter "data"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .locals 9
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 314
    .local v1, dataLen:I
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0, p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v0

    .line 316
    .local v0, septetCount:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 317
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string p1, "countGsmSeptetsUsingTables(): unencodable char"

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 314
    .end local v0           #septetCount:I
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    .restart local v0       #septetCount:I
    :cond_1
    add-int v4, v0, p1

    .line 320
    .end local v0           #septetCount:I
    .local v4, septetCount:I
    const/16 v0, 0xff

    if-le v4, v0, :cond_2

    .line 321
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string p1, "Payload cannot exceed 255 septets"

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 323
    .restart local p0
    .restart local p1
    :cond_2
    mul-int/lit8 v0, v4, 0x7

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 324
    .local v0, byteCount:I
    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    .line 325
    .end local v0           #byteCount:I
    .local v3, ret:[B
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, p3

    .line 326
    .local v0, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object p3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .end local p3
    aget-object p4, p3, p4

    .line 327
    .local p4, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 p3, 0x0

    .local p3, i:I
    move v2, p1

    .local v2, septets:I
    mul-int/lit8 p1, p1, 0x7

    .local p1, bitOffset:I
    move v5, v2

    .end local v2           #septets:I
    .local v5, septets:I
    move v2, p3

    .line 328
    .end local p3           #i:I
    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_5

    if-ge v5, v4, :cond_5

    .line 330
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 331
    .local p3, c:C
    const/4 v6, -0x1

    invoke-virtual {v0, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 332
    .local v6, v:I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    .line 333
    const/4 v6, -0x1

    invoke-virtual {p4, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    .end local v6           #v:I
    move-result v6

    .line 334
    .restart local v6       #v:I
    const/4 p3, -0x1

    if-ne v6, p3, :cond_4

    .line 335
    .end local p3           #c:C
    if-eqz p2, :cond_3

    .line 336
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string/jumbo p1, "stringToGsm7BitPacked(): unencodable char"

    .end local p1           #bitOffset:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 338
    .restart local p0
    .restart local p1       #bitOffset:I
    :cond_3
    const/16 p3, 0x20

    const/16 v6, 0x20

    invoke-virtual {v0, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    .end local v6           #v:I
    move-result p3

    .local p3, v:I
    move v8, p3

    .end local p3           #v:I
    .local v8, v:I
    move p3, v5

    .end local v5           #septets:I
    .local p3, septets:I
    move v5, v8

    .line 346
    .end local v8           #v:I
    .local v5, v:I
    :goto_2
    invoke-static {v3, p1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 347
    add-int/lit8 v5, p3, 0x1

    .line 329
    .end local p3           #septets:I
    .local v5, septets:I
    add-int/lit8 p3, v2, 0x1

    .end local v2           #i:I
    .local p3, i:I
    add-int/lit8 p1, p1, 0x7

    move v2, p3

    .end local p3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 341
    .restart local v6       #v:I
    :cond_4
    const/16 p3, 0x1b

    invoke-static {v3, p1, p3}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 342
    add-int/lit8 p1, p1, 0x7

    .line 343
    add-int/lit8 p3, v5, 0x1

    .end local v5           #septets:I
    .local p3, septets:I
    move v5, v6

    .end local v6           #v:I
    .local v5, v:I
    goto :goto_2

    .line 349
    .end local p3           #septets:I
    .local v5, septets:I
    :cond_5
    const/4 p0, 0x0

    int-to-byte p1, v4

    aput-byte p1, v3, p0

    .line 350
    .end local p0
    .end local p1           #bitOffset:I
    return-object v3

    .restart local v6       #v:I
    .restart local p0
    .restart local p1       #bitOffset:I
    .local p3, c:C
    :cond_6
    move p3, v5

    .end local v5           #septets:I
    .local p3, septets:I
    move v5, v6

    .end local v6           #v:I
    .local v5, v:I
    goto :goto_2
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .locals 6
    .parameter "data"
    .parameter "header"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 229
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 230
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v3

    .line 242
    :goto_0
    return-object v3

    .line 233
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 234
    .local v0, headerBits:I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 236
    .local v1, headerSeptets:I
    invoke-static {p0, v1, v4, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v2

    .line 240
    .local v2, ret:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 241
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    .line 242
    goto :goto_0
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 542
    const/4 v2, 0x1

    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 545
    .local v1, septets:I
    new-array v0, v1, [B

    .line 547
    .local v0, ret:[B
    array-length v2, v0

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 549
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 12
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 564
    move v4, p2

    .line 565
    .local v4, outByteIndex:I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v8, v10

    .line 566
    .local v1, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v8, v10

    .line 569
    .local v2, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, sz:I
    move v5, v4

    .line 570
    .end local v4           #outByteIndex:I
    .local v5, outByteIndex:I
    :goto_0
    if-ge v3, v6, :cond_1

    sub-int v8, v5, p2

    if-ge v8, p3, :cond_1

    .line 573
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 575
    .local v0, c:C
    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 577
    .local v7, v:I
    if-ne v7, v9, :cond_4

    .line 578
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 579
    if-ne v7, v9, :cond_0

    .line 580
    invoke-virtual {v1, v11, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    move v4, v5

    .line 591
    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 583
    :cond_0
    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_2

    .line 595
    .end local v0           #c:C
    .end local v7           #v:I
    :cond_1
    :goto_2
    sub-int v8, v5, p2

    if-ge v8, p3, :cond_3

    .line 596
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    aput-byte v9, p1, v5

    move v5, v4

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    goto :goto_2

    .line 587
    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    const/16 v8, 0x1b

    aput-byte v8, p1, v5

    goto :goto_1

    .line 598
    .end local v0           #c:C
    .end local v4           #outByteIndex:I
    .end local v7           #v:I
    .restart local v5       #outByteIndex:I
    :cond_3
    return-void

    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_4
    move v4, v5

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    goto :goto_1
.end method

.method public static stringToUCS81Packed(Ljava/lang/String;CI)[B
    .locals 10
    .parameter "s"
    .parameter "baser81"
    .parameter "septets"

    .prologue
    const/16 v9, 0x1b

    .line 644
    new-array v1, p2, [B

    .line 645
    .local v1, dest:[B
    const/4 v7, 0x0

    and-int/lit16 v8, p1, 0x7f80

    shr-int/lit8 v8, v8, 0x7

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 646
    const/4 v3, 0x1

    .line 648
    .local v3, outByteIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, sz:I
    move v4, v3

    .end local v3           #outByteIndex:I
    .local v4, outByteIndex:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 649
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 650
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm7bit(C)I

    move-result v6

    .line 652
    .local v6, v:I
    const/4 v7, -0x1

    if-ne v7, v6, :cond_0

    .line 653
    add-int/lit8 v3, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    and-int/lit8 v7, v0, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    .line 648
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    goto :goto_0

    .line 654
    :cond_0
    if-ne v6, v9, :cond_1

    .line 655
    add-int/lit8 v3, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    aput-byte v9, v1, v4

    .line 656
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v6

    .line 657
    add-int/lit8 v4, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    int-to-byte v7, v6

    aput-byte v7, v1, v3

    move v3, v4

    .end local v4           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    goto :goto_1

    .line 659
    .end local v3           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    int-to-byte v7, v6

    aput-byte v7, v1, v4

    goto :goto_1

    .line 663
    .end local v0           #c:C
    .end local v3           #outByteIndex:I
    .end local v6           #v:I
    .restart local v4       #outByteIndex:I
    :cond_2
    return-object v1
.end method

.method public static stringToUCS82Packed(Ljava/lang/String;CI)[B
    .locals 10
    .parameter "s"
    .parameter "baser82Low"
    .parameter "septets"

    .prologue
    const/16 v9, 0x1b

    .line 673
    new-array v1, p2, [B

    .line 674
    .local v1, dest:[B
    const/4 v7, 0x0

    shr-int/lit8 v8, p1, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 675
    const/4 v7, 0x1

    and-int/lit16 v8, p1, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 676
    const/4 v3, 0x2

    .line 678
    .local v3, outByteIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, sz:I
    move v4, v3

    .end local v3           #outByteIndex:I
    .local v4, outByteIndex:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 679
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 680
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm7bit(C)I

    move-result v6

    .line 682
    .local v6, v:I
    const/4 v7, -0x1

    if-ne v7, v6, :cond_0

    .line 683
    add-int/lit8 v3, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    and-int/lit16 v7, v0, 0xff

    and-int/lit16 v8, p1, 0xff

    sub-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    .line 678
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    goto :goto_0

    .line 684
    :cond_0
    if-ne v6, v9, :cond_1

    .line 685
    add-int/lit8 v3, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    aput-byte v9, v1, v4

    .line 686
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v6

    .line 687
    add-int/lit8 v4, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    int-to-byte v7, v6

    aput-byte v7, v1, v3

    move v3, v4

    .end local v4           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    goto :goto_1

    .line 689
    .end local v3           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    int-to-byte v7, v6

    aput-byte v7, v1, v4

    goto :goto_1

    .line 693
    .end local v0           #c:C
    .end local v3           #outByteIndex:I
    .end local v6           #v:I
    .restart local v4       #outByteIndex:I
    :cond_2
    return-object v1
.end method

.method public static ussd_7bit_ucs2_to_gsm_char_default(C)C
    .locals 1
    .parameter "c"

    .prologue
    .line 775
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, p0

    .line 839
    :goto_0
    return v0

    .line 780
    :pswitch_1
    const/16 v0, 0x61

    goto :goto_0

    .line 786
    :pswitch_2
    const/16 v0, 0x65

    goto :goto_0

    .line 790
    :pswitch_3
    const/16 v0, 0x69

    goto :goto_0

    .line 795
    :pswitch_4
    const/16 v0, 0x6f

    goto :goto_0

    .line 799
    :pswitch_5
    const/16 v0, 0x75

    goto :goto_0

    .line 805
    :pswitch_6
    const/16 v0, 0x41

    goto :goto_0

    .line 810
    :pswitch_7
    const/16 v0, 0x45

    goto :goto_0

    .line 815
    :pswitch_8
    const/16 v0, 0x49

    goto :goto_0

    .line 820
    :pswitch_9
    const/16 v0, 0x4f

    goto :goto_0

    .line 825
    :pswitch_a
    const/16 v0, 0x55

    goto :goto_0

    .line 828
    :pswitch_b
    const/16 v0, 0x59

    goto :goto_0

    .line 830
    :pswitch_c
    const/16 v0, 0x44

    goto :goto_0

    .line 832
    :pswitch_d
    const/16 v0, 0x63

    goto :goto_0

    .line 835
    :pswitch_e
    const/16 v0, 0x79

    goto :goto_0

    .line 837
    :pswitch_f
    const/16 v0, 0xe4

    goto :goto_0

    .line 775
    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_c
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public static util_UnicodeToGsm7DefaultExtended(C)C
    .locals 1
    .parameter "c"

    .prologue
    .line 749
    sparse-switch p0, :sswitch_data_0

    move v0, p0

    .line 762
    :goto_0
    return v0

    .line 751
    :sswitch_0
    const/16 v0, 0xa

    goto :goto_0

    .line 752
    :sswitch_1
    const/16 v0, 0x14

    goto :goto_0

    .line 753
    :sswitch_2
    const/16 v0, 0x28

    goto :goto_0

    .line 754
    :sswitch_3
    const/16 v0, 0x29

    goto :goto_0

    .line 755
    :sswitch_4
    const/16 v0, 0x2f

    goto :goto_0

    .line 756
    :sswitch_5
    const/16 v0, 0x3c

    goto :goto_0

    .line 757
    :sswitch_6
    const/16 v0, 0x3d

    goto :goto_0

    .line 758
    :sswitch_7
    const/16 v0, 0x3e

    goto :goto_0

    .line 759
    :sswitch_8
    const/16 v0, 0x40

    goto :goto_0

    .line 760
    :sswitch_9
    const/16 v0, 0x65

    goto :goto_0

    .line 749
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x5b -> :sswitch_5
        0x5c -> :sswitch_4
        0x5d -> :sswitch_7
        0x5e -> :sswitch_1
        0x7b -> :sswitch_2
        0x7c -> :sswitch_8
        0x7d -> :sswitch_3
        0x7e -> :sswitch_6
        0x20ac -> :sswitch_9
    .end sparse-switch
.end method
