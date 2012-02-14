.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 77
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 82
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 67
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 72
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 97
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 98
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 4
    .parameter "headers"

    .prologue
    .line 1706
    if-nez p0, :cond_0

    .line 1707
    const/4 p0, 0x0

    .line 1913
    .end local p0
    :goto_0
    return p0

    .line 1711
    .restart local p0
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 1714
    .local v0, messageType:I
    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1715
    .local v1, mmsVersion:I
    if-nez v1, :cond_1

    .line 1717
    const/4 p0, 0x0

    goto :goto_0

    .line 1721
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 1910
    const/4 p0, 0x0

    goto :goto_0

    .line 1724
    :pswitch_0
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1725
    .local v0, srContentType:[B
    if-nez v0, :cond_2

    .line 1726
    const/4 p0, 0x0

    goto :goto_0

    .line 1730
    :cond_2
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #srContentType:[B
    move-result-object v0

    .line 1731
    .local v0, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_3

    .line 1732
    const/4 p0, 0x0

    goto :goto_0

    .line 1736
    :cond_3
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p0

    .line 1737
    .local p0, srTransactionId:[B
    if-nez p0, :cond_15

    .line 1738
    const/4 p0, 0x0

    goto :goto_0

    .line 1744
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_1
    const/16 v0, 0x92

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1745
    .local v0, scResponseStatus:I
    if-nez v0, :cond_4

    .line 1746
    const/4 p0, 0x0

    goto :goto_0

    .line 1750
    :cond_4
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #scResponseStatus:I
    move-result-object p0

    .line 1751
    .local p0, scTransactionId:[B
    if-nez p0, :cond_15

    .line 1752
    const/4 p0, 0x0

    goto :goto_0

    .line 1758
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_2
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1759
    .local v0, niContentLocation:[B
    if-nez v0, :cond_5

    .line 1760
    const/4 p0, 0x0

    goto :goto_0

    .line 1764
    :cond_5
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niContentLocation:[B
    move-result-wide v0

    .line 1765
    .end local v1           #mmsVersion:I
    .local v0, niExpiry:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    .line 1766
    .end local v0           #niExpiry:J
    const/4 p0, 0x0

    goto :goto_0

    .line 1770
    :cond_6
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1771
    .local v0, niMessageClass:[B
    if-nez v0, :cond_7

    .line 1772
    const/4 p0, 0x0

    goto :goto_0

    .line 1776
    :cond_7
    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niMessageClass:[B
    move-result-wide v0

    .line 1777
    .local v0, niMessageSize:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_8

    .line 1778
    .end local v0           #niMessageSize:J
    const/4 p0, 0x0

    goto :goto_0

    .line 1782
    :cond_8
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1783
    .local p0, niTransactionId:[B
    if-nez p0, :cond_15

    .line 1784
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1790
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_3
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1791
    .local v0, nriStatus:I
    if-nez v0, :cond_9

    .line 1792
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1796
    :cond_9
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #nriStatus:I
    move-result-object p0

    .line 1797
    .local p0, nriTransactionId:[B
    if-nez p0, :cond_15

    .line 1798
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1804
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_4
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1805
    .local v0, rcContentType:[B
    if-nez v0, :cond_a

    .line 1806
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1810
    :cond_a
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #rcContentType:[B
    move-result-wide v0

    .line 1811
    .end local v1           #mmsVersion:I
    .local v0, rcDate:J
    const-wide/16 v2, -0x1

    cmp-long p0, v2, v0

    if-nez p0, :cond_15

    .line 1812
    .end local p0           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1818
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .restart local p0       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_5
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 1819
    .end local v1           #mmsVersion:I
    .local v0, diDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_b

    .line 1820
    .end local v0           #diDate:J
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1824
    :cond_b
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1825
    .local v0, diMessageId:[B
    if-nez v0, :cond_c

    .line 1826
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1830
    :cond_c
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #diMessageId:[B
    move-result v0

    .line 1831
    .local v0, diStatus:I
    if-nez v0, :cond_d

    .line 1832
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1836
    :cond_d
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #diStatus:I
    move-result-object p0

    .line 1837
    .local p0, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    .line 1838
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1844
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_6
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object p0

    .line 1845
    .local p0, aiTransactionId:[B
    if-nez p0, :cond_15

    .line 1846
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1852
    .restart local v0       #messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_7
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 1853
    .end local v1           #mmsVersion:I
    .local v0, roDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_e

    .line 1854
    .end local v0           #roDate:J
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1858
    :cond_e
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 1859
    .local v0, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_f

    .line 1860
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1864
    :cond_f
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 1865
    .local v0, roMessageId:[B
    if-nez v0, :cond_10

    .line 1866
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1870
    :cond_10
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #roMessageId:[B
    move-result v0

    .line 1871
    .local v0, roReadStatus:I
    if-nez v0, :cond_11

    .line 1872
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1876
    :cond_11
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #roReadStatus:I
    move-result-object p0

    .line 1877
    .local p0, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    .line 1878
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1884
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_8
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #messageType:I
    move-result-object v0

    .line 1885
    .local v0, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_12

    .line 1886
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1890
    :cond_12
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 1891
    .local v0, rrMessageId:[B
    if-nez v0, :cond_13

    .line 1892
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1896
    :cond_13
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #rrMessageId:[B
    move-result v0

    .line 1897
    .local v0, rrReadStatus:I
    if-nez v0, :cond_14

    .line 1898
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1902
    :cond_14
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #rrReadStatus:I
    move-result-object p0

    .line 1903
    .local p0, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    .line 1904
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1913
    .end local v1           #mmsVersion:I
    .end local p0           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 1721
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .parameter "part"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1670
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1671
    :cond_0
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_1

    move v2, v3

    .line 1696
    :goto_0
    return v2

    .line 1677
    :cond_1
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v2, :cond_2

    .line 1678
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1679
    .local v0, contentId:[B
    if-eqz v0, :cond_2

    .line 1680
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_2

    move v2, v4

    .line 1681
    goto :goto_0

    .line 1687
    .end local v0           #contentId:[B
    :cond_2
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v2, :cond_3

    .line 1688
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1689
    .local v1, contentType:[B
    if-eqz v1, :cond_3

    .line 1690
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_3

    move v2, v4

    .line 1691
    goto :goto_0

    .end local v1           #contentType:[B
    :cond_3
    move v2, v3

    .line 1696
    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    .line 1131
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1132
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1133
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1134
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    .line 1097
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1098
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1099
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1100
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1101
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1103
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1104
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1105
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1113
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1114
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1108
    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1109
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1117
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1118
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1121
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    .line 1081
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-lt p0, v0, :cond_2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_2

    :cond_1
    move v0, v1

    .line 1092
    :goto_0
    return v0

    .line 1085
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1092
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1089
    goto :goto_0

    .line 1085
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v1, 0x0

    .line 1037
    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    move v0, v1

    .line 1062
    :goto_0
    return v0

    .line 1041
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1062
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 1059
    goto :goto_0

    .line 1041
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 860
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 7
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1435
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1437
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    .line 1438
    .local v0, contentType:[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1439
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1440
    .local v2, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v2, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1441
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1443
    and-int/lit16 v1, v2, 0xff

    .line 1445
    .local v1, cur:I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_8

    .line 1446
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 1447
    .local v2, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1448
    .local v3, startPos:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1449
    .end local v1           #cur:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1450
    .local v4, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-ne v1, v4, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1451
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1452
    and-int/lit16 v1, v4, 0xff

    .line 1454
    .local v1, first:I
    const/16 v5, 0x20

    if-lt v1, v5, :cond_4

    const/16 v5, 0x7f

    if-gt v1, v5, :cond_4

    .line 1455
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #contentType:[B
    move-result-object v0

    .line 1470
    .end local v1           #first:I
    .restart local v0       #contentType:[B
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1471
    .local v1, endPos:I
    sub-int v1, v3, v1

    sub-int v1, v2, v1

    .line 1472
    .local v1, parameterLen:I
    if-lez v1, :cond_3

    .line 1473
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2           #length:I
    invoke-static {p0, p1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1476
    :cond_3
    if-gez v1, :cond_7

    .line 1477
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt MMS message"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .local v6, contentType:[B
    move-object v0, p0

    move-object p0, v6

    .line 1487
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .end local v6           #contentType:[B
    .local p0, contentType:[B
    :goto_1
    return-object v0

    .line 1456
    .restart local v0       #contentType:[B
    .local v1, first:I
    .restart local v2       #length:I
    .restart local v3       #startPos:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_4
    const/16 v5, 0x7f

    if-le v1, v5, :cond_6

    .line 1457
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1459
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #first:I
    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1460
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, contentType:[B
    goto :goto_0

    .line 1462
    .local v0, index:I
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1463
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #index:I
    move-result-object v0

    .local v0, contentType:[B
    goto :goto_0

    .line 1466
    .restart local v1       #first:I
    :cond_6
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt content-type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .restart local v6       #contentType:[B
    move-object v0, p0

    move-object p0, v6

    .end local v6           #contentType:[B
    .local p0, contentType:[B
    goto :goto_1

    .end local v2           #length:I
    .restart local v0       #contentType:[B
    .local v1, parameterLen:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_7
    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object p0, v0

    .end local v0           #contentType:[B
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .local p0, contentType:[B
    :goto_2
    move-object v0, p0

    .line 1487
    goto :goto_1

    .line 1480
    .restart local v0       #contentType:[B
    .local v1, cur:I
    .local v2, temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_8
    const/16 p1, 0x7f

    if-gt v1, p1, :cond_9

    .line 1481
    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .local p1, temp:I
    goto :goto_2

    .line 1483
    .end local p1           #temp:I
    .restart local v0       #contentType:[B
    .restart local v2       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_9
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .restart local p1       #temp:I
    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 5
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1264
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1265
    .restart local p0
    :cond_0
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1267
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1268
    .local v2, startPos:I
    const/4 v1, 0x0

    .line 1269
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, lastLen:I
    move v3, v1

    .line 1270
    .end local v1           #tempPos:I
    .local v3, tempPos:I
    :goto_0
    if-lez v0, :cond_c

    .line 1271
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1272
    .local v1, param:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    const/4 v4, -0x1

    if-ne v4, v1, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1273
    .restart local p0
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 1275
    sparse-switch v1, :sswitch_data_0

    .line 1406
    const/4 v1, -0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v1           #param:I
    move-result v4

    if-ne v1, v4, :cond_b

    .line 1407
    const-string v1, "PduParser"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    :goto_1
    move v3, v1

    .line 1413
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    goto :goto_0

    .line 1291
    .local v1, param:I
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1292
    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1293
    .local v0, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1294
    const/16 v1, 0x7f

    if-le v0, v1, :cond_4

    .line 1296
    .end local v1           #param:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1298
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1299
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1300
    .local v0, type:[B
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    .end local v0           #type:[B
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1313
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1314
    .local v0, lastLen:I
    goto :goto_1

    .line 1306
    .end local v1           #tempPos:I
    .local v0, first:I
    .restart local v3       #tempPos:I
    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #first:I
    move-result-object v0

    .line 1307
    .local v0, type:[B
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1308
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1331
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .line 1332
    .local v0, start:[B
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 1333
    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1337
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #start:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1338
    .local v0, lastLen:I
    goto :goto_1

    .line 1355
    .local v1, param:I
    .restart local v3       #tempPos:I
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1356
    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1357
    .local v0, firstValue:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1359
    const/16 v1, 0x20

    if-le v0, v1, :cond_6

    .end local v1           #param:I
    const/16 v1, 0x7f

    if-lt v0, v1, :cond_7

    :cond_6
    if-nez v0, :cond_9

    .line 1362
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #firstValue:I
    move-result-object v1

    .line 1364
    .local v1, charsetStr:[B
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v0

    .line 1366
    .local v0, charsetInt:I
    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v3           #tempPos:I
    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charsetInt:I
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    .end local v1           #charsetStr:[B
    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1381
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1382
    .local v0, lastLen:I
    goto/16 :goto_1

    .line 1367
    .end local v0           #lastLen:I
    .local v1, charsetStr:[B
    :catch_0
    move-exception v0

    .line 1369
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "PduParser"

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .end local v1           #charsetStr:[B
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1370
    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1374
    .local v0, firstValue:I
    .restart local v3       #tempPos:I
    :cond_9
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    .end local v0           #firstValue:I
    long-to-int v0, v0

    .line 1375
    .local v0, charset:I
    if-eqz p1, :cond_8

    .line 1376
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charset:I
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1394
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .line 1395
    .local v0, name:[B
    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 1396
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1400
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #name:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1401
    .local v0, lastLen:I
    goto/16 :goto_1

    .line 1409
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_b
    const/4 v0, 0x0

    move v1, v3

    .end local v3           #tempPos:I
    .restart local v1       #tempPos:I
    goto/16 :goto_1

    .line 1415
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_c
    if-eqz v0, :cond_d

    .line 1416
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Content-Type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_d
    return-void

    .line 1275
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 8
    .parameter "pduDataStream"

    .prologue
    .line 936
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 937
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 938
    const/4 v3, 0x0

    .line 939
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 940
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 941
    .local v5, temp:I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    const/4 v7, -0x1

    if-ne v7, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 942
    :cond_1
    and-int/lit16 v2, v5, 0xff

    .line 944
    .local v2, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 945
    const/16 v7, 0x20

    if-ge v2, v7, :cond_2

    .line 946
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 948
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 951
    :cond_2
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 954
    .local v6, textString:[B
    if-eqz v0, :cond_3

    .line 955
    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    move-object v7, v3

    .line 963
    :goto_1
    return-object v7

    .line 957
    :cond_3
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_0

    .line 959
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 960
    .local v1, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .parameter "pduDataStream"

    .prologue
    .line 1206
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1207
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1208
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1209
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1210
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1211
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1212
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1214
    :goto_0
    return-wide v1

    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 9
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1174
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1175
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1176
    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v7, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1177
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1179
    .local v0, count:I
    if-le v0, v8, :cond_2

    .line 1180
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1183
    :cond_2
    const-wide/16 v2, 0x0

    .line 1185
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1186
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1187
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v7, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1188
    :cond_3
    shl-long/2addr v2, v8

    .line 1189
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1192
    :cond_4
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 6
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1500
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1501
    .restart local p0
    :cond_0
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1502
    .restart local p0
    :cond_1
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gtz p2, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1520
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1521
    .local v2, startPos:I
    const/4 v1, 0x0

    .line 1522
    .local v1, tempPos:I
    move v0, p2

    .local v0, lastLen:I
    move v3, v1

    .end local v1           #tempPos:I
    .local v3, tempPos:I
    move v1, v0

    .line 1523
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    :goto_0
    if-lez v1, :cond_10

    .line 1524
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1525
    .local v0, header:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    const/4 v4, -0x1

    if-ne v4, v0, :cond_3

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1526
    .restart local p0
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 1528
    const/16 v4, 0x7f

    if-le v0, v4, :cond_c

    .line 1530
    sparse-switch v0, :sswitch_data_0

    .line 1621
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v4

    if-ne v0, v4, :cond_b

    .line 1622
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .line 1659
    .end local v1           #lastLen:I
    .local p0, lastLen:I
    :goto_1
    return p1

    .line 1536
    .restart local v0       #header:I
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1537
    .local v0, contentLocation:[B
    if-eqz v0, :cond_4

    .line 1538
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1541
    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1542
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    :goto_2
    move v3, v1

    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    move v1, v0

    .line 1652
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    goto :goto_0

    .line 1549
    .local v0, header:I
    :sswitch_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1550
    .local v0, contentId:[B
    if-eqz v0, :cond_5

    .line 1551
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1554
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1555
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1556
    .local v0, lastLen:I
    goto :goto_2

    .line 1572
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :sswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .end local v0           #header:I
    const v4, 0x10d0016

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1575
    .local v0, contentDisposition:Z
    if-eqz v0, :cond_13

    .line 1576
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1577
    .local v0, len:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1578
    .end local v1           #lastLen:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1579
    .local v4, thisStartPos:I
    const/4 v1, 0x0

    .line 1580
    .local v1, thisEndPos:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1582
    .local v3, value:I
    const/16 v1, 0x80

    if-ne v3, v1, :cond_8

    .line 1583
    .end local v1           #thisEndPos:I
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1596
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1597
    .restart local v1       #thisEndPos:I
    sub-int v5, v4, v1

    if-ge v5, v0, :cond_12

    .line 1598
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1599
    .end local v3           #value:I
    .local v5, value:I
    const/16 v1, 0x98

    if-ne v5, v1, :cond_6

    .line 1600
    .end local v1           #thisEndPos:I
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1605
    :cond_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1606
    .local v3, thisEndPos:I
    sub-int v1, v4, v3

    if-ge v1, v0, :cond_7

    .line 1607
    sub-int v1, v4, v3

    sub-int/2addr v0, v1

    .line 1608
    .local v0, last:I
    new-array v1, v0, [B

    .line 1609
    .local v1, temp:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .end local v0           #last:I
    .end local v1           #temp:[B
    .end local v4           #thisStartPos:I
    :cond_7
    move v1, v5

    .end local v5           #value:I
    .local v1, value:I
    move v0, v3

    .line 1613
    .end local v3           #thisEndPos:I
    .local v0, thisEndPos:I
    :goto_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1614
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1615
    .local v0, lastLen:I
    goto :goto_2

    .line 1584
    .end local v1           #tempPos:I
    .local v0, len:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I
    :cond_8
    const/16 v1, 0x81

    if-ne v3, v1, :cond_9

    .line 1585
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .line 1586
    :cond_9
    const/16 v1, 0x82

    if-ne v3, v1, :cond_a

    .line 1587
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .line 1589
    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1591
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .line 1625
    .end local v0           #len:I
    .end local v4           #thisStartPos:I
    .local v1, lastLen:I
    .local v3, tempPos:I
    :cond_b
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    .line 1628
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_c
    const/16 v4, 0x20

    if-lt v0, v4, :cond_e

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_e

    .line 1630
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1631
    .local v0, tempHeader:[B
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v1           #lastLen:I
    move-result-object v1

    .line 1634
    .local v1, tempValue:[B
    const/4 v3, 0x1

    const-string v4, "Content-Transfer-Encoding"

    .end local v3           #tempPos:I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #tempHeader:[B
    if-ne v3, v0, :cond_d

    .line 1636
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1639
    :cond_d
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1640
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1641
    .local v0, lastLen:I
    goto/16 :goto_2

    .line 1646
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_e
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v4

    if-ne v0, v4, :cond_f

    .line 1647
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .line 1650
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_f
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    .line 1654
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_10
    if-eqz v1, :cond_11

    .line 1655
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .line 1659
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_11
    const/4 p0, 0x1

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .local v0, len:I
    .local v1, thisEndPos:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_12
    move v0, v1

    .end local v1           #thisEndPos:I
    .local v0, thisEndPos:I
    move v1, v3

    .end local v3           #value:I
    .local v1, value:I
    goto/16 :goto_4

    .end local v4           #thisStartPos:I
    .local v0, contentDisposition:Z
    .local v1, lastLen:I
    .local v3, tempPos:I
    :cond_13
    move v0, v1

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    .line 1530
    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 10
    .parameter "pduDataStream"

    .prologue
    .line 743
    if-nez p0, :cond_0

    .line 744
    const/4 p0, 0x0

    .line 848
    .end local p0
    :goto_0
    return-object p0

    .line 747
    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 748
    .local v2, count:I
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 750
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_d

    .line 751
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 752
    .local v4, headerLength:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 753
    .local v3, dataLength:I
    new-instance v7, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 754
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 755
    .local v8, startPos:I
    if-gtz v8, :cond_1

    .line 757
    const/4 p0, 0x0

    goto :goto_0

    .line 761
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 762
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v1

    .line 763
    .local v1, contentType:[B
    if-eqz v1, :cond_4

    .line 764
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 770
    .end local v1           #contentType:[B
    :goto_2
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 771
    .local v1, name:[B
    if-eqz v1, :cond_2

    .line 772
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 776
    :cond_2
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #name:[B
    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 777
    .local v1, charset:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 778
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1           #charset:Ljava/lang/Integer;
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 782
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 783
    .local v1, endPos:I
    sub-int v1, v8, v1

    sub-int v1, v4, v1

    .line 784
    .local v1, partHeaderLen:I
    if-lez v1, :cond_5

    .line 785
    invoke-static {p0, v7, v1}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v1

    .end local v1           #partHeaderLen:I
    if-nez v1, :cond_6

    .line 787
    const/4 p0, 0x0

    goto :goto_0

    .line 766
    .local v1, contentType:[B
    :cond_4
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #contentType:[B
    const/4 v9, 0x0

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .line 789
    .local v1, partHeaderLen:I
    :cond_5
    if-gez v1, :cond_6

    .line 791
    const/4 p0, 0x0

    goto :goto_0

    .line 797
    .end local v1           #partHeaderLen:I
    :cond_6
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    if-nez v1, :cond_7

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .end local v8           #startPos:I
    invoke-static {v8, v9}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 806
    :cond_7
    if-lez v3, :cond_b

    .line 807
    new-array v4, v3, [B

    .line 808
    .local v4, partData:[B
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    .end local v6           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 809
    .local v1, partContentType:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 810
    const-string v3, "application/vnd.wap.multipart.alternative"

    .end local v3           #dataLength:I
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1           #partContentType:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 812
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 814
    .local v1, childBody:Lcom/google/android/mms/pdu/PduBody;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 839
    .end local v4           #partData:[B
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v3

    if-nez v3, :cond_c

    .line 841
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 750
    :goto_4
    add-int/lit8 v1, v5, 0x1

    .end local v5           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto/16 :goto_1

    .line 817
    .restart local v4       #partData:[B
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_8
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v3

    .line 818
    .local v3, partDataEncoding:[B
    if-eqz v3, :cond_e

    .line 819
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 820
    .local v1, encoding:Ljava/lang/String;
    const-string v3, "base64"

    .end local v3           #partDataEncoding:[B
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 822
    invoke-static {v4}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 830
    .end local v4           #partData:[B
    .local v1, partData:[B
    :goto_5
    if-nez v1, :cond_a

    .line 831
    const-string p0, "Decode part data error!"

    .end local p0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 832
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 823
    .local v1, encoding:Ljava/lang/String;
    .restart local v4       #partData:[B
    .restart local p0
    :cond_9
    const-string v3, "quoted-printable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1           #encoding:Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 825
    invoke-static {v4}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v1

    .end local v4           #partData:[B
    .local v1, partData:[B
    goto :goto_5

    .line 834
    :cond_a
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .end local v1           #partData:[B
    :cond_b
    move-object v1, v7

    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    goto :goto_3

    .line 844
    :cond_c
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_4

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_d
    move-object p0, v0

    .line 848
    goto/16 :goto_0

    .restart local v4       #partData:[B
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_e
    move-object v1, v4

    .end local v4           #partData:[B
    .local v1, partData:[B
    goto :goto_5
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    .line 1151
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1152
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1153
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1154
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 874
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 875
    :cond_0
    const/4 v0, 0x0

    .line 876
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 877
    .local v1, temp:I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 893
    :goto_0
    return v2

    .line 881
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 882
    shl-int/lit8 v0, v0, 0x7

    .line 883
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 884
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 885
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 886
    goto :goto_0

    .line 890
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 891
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 893
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    .line 911
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 912
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 913
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 914
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 916
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    move v2, v0

    .line 919
    :goto_0
    return v2

    .line 918
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 919
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    goto :goto_0

    .line 922
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    .line 975
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 993
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 996
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 997
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 998
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 1001
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1016
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1002
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1005
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1008
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1226
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1227
    :cond_0
    new-array v0, p1, [B

    .line 1228
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1229
    .local v1, readLen:I
    if-ge v1, p1, :cond_1

    .line 1230
    const/4 v2, -0x1

    .line 1232
    :goto_0
    return v2

    :cond_1
    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 107
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v12, :cond_0

    move-object v12, v14

    .line 188
    :goto_0
    return-object v12

    .line 112
    :cond_0
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 113
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v12, :cond_1

    move-object v12, v14

    .line 115
    goto :goto_0

    .line 119
    :cond_1
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    .line 122
    .local v4, messageType:I
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 123
    const-string v12, "check mandatory headers failed!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v12, v14

    .line 124
    goto :goto_0

    .line 127
    :cond_2
    const/16 v12, 0x80

    if-eq v12, v4, :cond_3

    const/16 v12, 0x84

    if-ne v12, v4, :cond_4

    .line 130
    :cond_3
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 131
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v12, :cond_4

    move-object v12, v14

    .line 133
    goto :goto_0

    .line 137
    :cond_4
    packed-switch v4, :pswitch_data_0

    .line 187
    const-string v12, "Parser doesn\'t support this message type in this version!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v12, v14

    .line 188
    goto :goto_0

    .line 139
    :pswitch_0
    new-instance v11, Lcom/google/android/mms/pdu/SendReq;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v11, v12, v13}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v11, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object v12, v11

    .line 140
    goto :goto_0

    .line 142
    .end local v11           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v10, Lcom/google/android/mms/pdu/SendConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v10, v12}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object v12, v10

    .line 143
    goto :goto_0

    .line 145
    .end local v10           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v5, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v5, v12}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v5, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object v12, v5

    .line 147
    goto :goto_0

    .line 149
    .end local v5           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v6, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v6, v12}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v6, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v12, v6

    .line 151
    goto :goto_0

    .line 153
    .end local v6           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v9, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v9, v12, v13}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 156
    .local v9, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v1

    .line 157
    .local v1, contentType:[B
    if-nez v1, :cond_5

    move-object v12, v14

    .line 158
    goto :goto_0

    .line 160
    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 161
    .local v2, ctTypeStr:Ljava/lang/String;
    const-string v12, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    move-object v12, v9

    .line 167
    goto/16 :goto_0

    :cond_7
    move-object v12, v14

    .line 169
    goto/16 :goto_0

    .line 171
    .end local v1           #contentType:[B
    .end local v2           #ctTypeStr:Ljava/lang/String;
    .end local v9           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v3, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3, v12}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v3, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v12, v3

    .line 173
    goto/16 :goto_0

    .line 175
    .end local v3           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v12}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v0, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v12, v0

    .line 177
    goto/16 :goto_0

    .line 179
    .end local v0           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v7, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v7, v12}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v7, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v12, v7

    .line 181
    goto/16 :goto_0

    .line 183
    .end local v7           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v8, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v8, v12}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v8, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v12, v8

    .line 185
    goto/16 :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 34
    .parameter "pduDataStream"

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    const/16 v30, 0x0

    .line 733
    .end local p0
    :goto_0
    return-object v30

    .line 203
    .restart local p0
    :cond_0
    const/4 v14, 0x1

    .line 204
    .local v14, keepParsing:Z
    new-instance v13, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v13}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 206
    .end local p0
    .local v13, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_1
    :goto_1
    if-eqz v14, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v30

    if-lez v30, :cond_f

    .line 207
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 208
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 210
    .local v12, headerField:I
    const/16 v30, 0x20

    move v0, v12

    move/from16 v1, v30

    if-lt v0, v1, :cond_2

    const/16 v30, 0x7f

    move v0, v12

    move/from16 v1, v30

    if-gt v0, v1, :cond_2

    .line 211
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 212
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 217
    .local v5, bVal:[B
    goto :goto_1

    .line 219
    .end local v5           #bVal:[B
    :cond_2
    packed-switch v12, :pswitch_data_0

    .line 728
    :pswitch_0
    const-string v30, "Unknown header"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v18

    .line 223
    .local v18, messageType:I
    packed-switch v18, :pswitch_data_1

    .line 243
    :try_start_0
    move-object v0, v13

    move/from16 v1, v18

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 244
    :catch_0
    move-exception v7

    .line 245
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Set invalid Octet value: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " into the header filed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 247
    const/16 v30, 0x0

    goto :goto_0

    .line 240
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/16 v30, 0x0

    goto :goto_0

    .line 248
    :catch_1
    move-exception v7

    .line 249
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Octet header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 250
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 283
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v18           #messageType:I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v27

    .line 286
    .local v27, value:I
    :try_start_1
    move-object v0, v13

    move/from16 v1, v27

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 287
    :catch_2
    move-exception v7

    .line 288
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Set invalid Octet value: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " into the header filed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 290
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 291
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v7

    .line 292
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Octet header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 293
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 304
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v27           #value:I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v27

    .line 305
    .local v27, value:J
    move-object v0, v13

    move-wide/from16 v1, v27

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 306
    .end local v27           #value:J
    :catch_4
    move-exception v30

    move-object/from16 v7, v30

    .line 307
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Long-Integer header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 308
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 319
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v27

    .line 320
    .restart local v27       #value:J
    move-object v0, v13

    move-wide/from16 v1, v27

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 321
    .end local v27           #value:J
    :catch_5
    move-exception v30

    move-object/from16 v7, v30

    .line 322
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Long-Integer header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 323
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 349
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v27

    .line 350
    .local v27, value:[B
    if-eqz v27, :cond_1

    .line 352
    :try_start_4
    move-object v0, v13

    move-object/from16 v1, v27

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 353
    :catch_6
    move-exception v7

    .line 354
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 355
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_7
    move-exception v7

    .line 356
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Text-String header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 357
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 375
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v27           #value:[B
    :pswitch_7
    const/16 v30, 0x96

    move/from16 v0, v30

    move v1, v12

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_3

    .line 376
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 377
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v23

    .line 378
    .local v23, temp:I
    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move v9, v0

    .line 379
    .local v9, first:I
    if-eqz v9, :cond_1

    .line 382
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 385
    .end local v9           #first:I
    .end local v23           #temp:I
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 387
    .local v27, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v27, :cond_1

    .line 389
    :try_start_5
    move-object v0, v13

    move-object/from16 v1, v27

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    .line 390
    :catch_8
    move-exception v7

    .line 391
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 392
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_9
    move-exception v7

    .line 393
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 394
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 405
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v27           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 407
    .restart local v27       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v27, :cond_1

    .line 408
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 409
    .local v4, address:[B
    if-eqz v4, :cond_5

    .line 410
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 411
    .local v22, str:Ljava/lang/String;
    const-string v30, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 412
    .local v8, endIndex:I
    if-lez v8, :cond_4

    .line 413
    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 416
    :cond_4
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 424
    .end local v8           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :cond_5
    :try_start_7
    move-object v0, v13

    move-object/from16 v1, v27

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    .line 425
    :catch_a
    move-exception v7

    .line 426
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 417
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v8       #endIndex:I
    .restart local v22       #str:Ljava/lang/String;
    :catch_b
    move-exception v30

    move-object/from16 v7, v30

    .line 418
    .restart local v7       #e:Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 419
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 427
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v8           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :catch_c
    move-exception v7

    .line 428
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 429
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 442
    .end local v4           #address:[B
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v27           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 445
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 450
    .local v26, token:I
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v24

    .line 455
    .local v24, timeValue:J
    const/16 v30, 0x81

    move/from16 v0, v30

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    add-long v24, v24, v30

    .line 462
    :cond_6
    :try_start_9
    move-object v0, v13

    move-wide/from16 v1, v24

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    .line 463
    :catch_d
    move-exception v7

    .line 464
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Long-Integer header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 465
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 451
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v24           #timeValue:J
    :catch_e
    move-exception v7

    .line 452
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Long-Integer header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 453
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 475
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v26           #token:I
    :pswitch_a
    const/4 v10, 0x0

    .line 476
    .local v10, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 479
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 482
    .local v11, fromToken:I
    const/16 v30, 0x80

    move/from16 v0, v30

    move v1, v11

    if-ne v0, v1, :cond_9

    .line 484
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    .line 485
    if-eqz v10, :cond_8

    .line 486
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 487
    .restart local v4       #address:[B
    if-eqz v4, :cond_8

    .line 488
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 489
    .restart local v22       #str:Ljava/lang/String;
    const-string v30, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 490
    .restart local v8       #endIndex:I
    if-lez v8, :cond_7

    .line 491
    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 494
    :cond_7
    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object v0, v10

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .line 512
    .end local v4           #address:[B
    .end local v8           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :cond_8
    :goto_2
    const/16 v30, 0x89

    :try_start_b
    move-object v0, v13

    move-object v1, v10

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_1

    .line 513
    :catch_f
    move-exception v7

    .line 514
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 495
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v4       #address:[B
    .restart local v8       #endIndex:I
    .restart local v22       #str:Ljava/lang/String;
    :catch_10
    move-exception v30

    move-object/from16 v7, v30

    .line 496
    .restart local v7       #e:Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 497
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 503
    .end local v4           #address:[B
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v8           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :cond_9
    :try_start_c
    new-instance v10, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v10           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v30, "insert-address-token"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object v0, v10

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    .restart local v10       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2

    .line 505
    .end local v10           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_11
    move-exception v30

    move-object/from16 v7, v30

    .line 506
    .restart local v7       #e:Ljava/lang/NullPointerException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 507
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 515
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v10       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_12
    move-exception v7

    .line 516
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 517
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 524
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v10           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11           #fromToken:I
    :pswitch_b
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 525
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v16

    .line 527
    .local v16, messageClass:I
    const/16 v30, 0x80

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_d

    .line 530
    const/16 v30, 0x80

    move/from16 v0, v30

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 531
    :try_start_d
    const-string v30, "personal"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x8a

    move-object v0, v13

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    .line 547
    :catch_13
    move-exception v30

    move-object/from16 v7, v30

    .line 548
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 534
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_a
    const/16 v30, 0x81

    move/from16 v0, v30

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    .line 535
    :try_start_e
    const-string v30, "advertisement"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x8a

    move-object v0, v13

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    .line 549
    :catch_14
    move-exception v30

    move-object/from16 v7, v30

    .line 550
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Text-String header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 551
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 538
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_b
    const/16 v30, 0x82

    move/from16 v0, v30

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 539
    :try_start_f
    const-string v30, "informational"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x8a

    move-object v0, v13

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 542
    :cond_c
    const/16 v30, 0x83

    move/from16 v0, v30

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 543
    const-string v30, "auto"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v31, 0x8a

    move-object v0, v13

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_1

    .line 555
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 556
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    .line 557
    .local v17, messageClassString:[B
    if-eqz v17, :cond_1

    .line 559
    const/16 v30, 0x8a

    :try_start_10
    move-object v0, v13

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_1

    .line 560
    :catch_15
    move-exception v7

    .line 561
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 562
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_16
    move-exception v7

    .line 563
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Text-String header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 564
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 572
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v16           #messageClass:I
    .end local v17           #messageClassString:[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v29

    .line 575
    .local v29, version:I
    const/16 v30, 0x8d

    :try_start_11
    move-object v0, v13

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_11
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_18

    goto/16 :goto_1

    .line 576
    :catch_17
    move-exception v7

    .line 577
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Set invalid Octet value: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " into the header filed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 579
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 580
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_18
    move-exception v7

    .line 581
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Octet header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 582
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 591
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v29           #version:I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 595
    :try_start_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    .line 602
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v21

    .line 604
    .local v21, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v21, :cond_1

    .line 606
    const/16 v30, 0xa0

    :try_start_13
    move-object v0, v13

    move-object/from16 v1, v21

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_1

    .line 608
    :catch_19
    move-exception v7

    .line 609
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 596
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v21           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1a
    move-exception v7

    .line 597
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " is not Integer-Value"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 598
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 610
    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v21       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1b
    move-exception v7

    .line 611
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 612
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 622
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v21           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 626
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    .line 634
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v19

    .line 635
    .local v19, perviouslySentDate:J
    const/16 v30, 0xa1

    move-object v0, v13

    move-wide/from16 v1, v19

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c

    goto/16 :goto_1

    .line 637
    .end local v19           #perviouslySentDate:J
    :catch_1c
    move-exception v30

    move-object/from16 v7, v30

    .line 638
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Long-Integer header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 639
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 627
    .end local v7           #e:Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v7

    .line 628
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " is not Integer-Value"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 629
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 652
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 655
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 658
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    .line 671
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 674
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 678
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_1

    .line 679
    :catch_1e
    move-exception v7

    .line 680
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " is not Integer-Value"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 681
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 690
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 698
    :pswitch_12
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 700
    .local v15, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 703
    .local v6, contentType:[B
    if-eqz v6, :cond_e

    .line 705
    const/16 v30, 0x84

    :try_start_17
    move-object v0, v13

    move-object v1, v6

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    .line 715
    :cond_e
    :goto_3
    const/16 v30, 0x99

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v15

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 718
    const/16 v30, 0x83

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v15

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 720
    const/4 v14, 0x0

    .line 721
    goto/16 :goto_1

    .line 706
    :catch_1f
    move-exception v7

    .line 707
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v30, "null pointer error!"

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 708
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_20
    move-exception v7

    .line 709
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not Text-String header field!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 710
    const/16 v30, 0x0

    goto/16 :goto_0

    .end local v6           #contentType:[B
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v12           #headerField:I
    .end local v15           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_f
    move-object/from16 v30, v13

    .line 733
    goto/16 :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 223
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
