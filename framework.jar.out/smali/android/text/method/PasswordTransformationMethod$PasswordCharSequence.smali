.class Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 151
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 8
    .parameter "i"

    .prologue
    .line 158
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    .line 159
    iget-object v2, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    .line 161
    .local v2, sp:Landroid/text/Spanned;
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 162
    .local v3, st:I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 164
    .local v1, en:I
    if-lt p1, v3, :cond_0

    if-ge p1, v1, :cond_0

    .line 165
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 182
    .end local v1           #en:I
    .end local v2           #sp:Landroid/text/Spanned;
    .end local v3           #st:I
    :goto_0
    return v5

    .line 168
    .restart local v1       #en:I
    .restart local v2       #sp:Landroid/text/Spanned;
    .restart local v3       #st:I
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 170
    .local v4, visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 171
    aget-object v5, v4, v0

    #getter for: Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;
    invoke-static {v5}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 172
    aget-object v5, v4, v0

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 173
    aget-object v5, v4, v0

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 175
    if-lt p1, v3, :cond_1

    if-ge p1, v1, :cond_1

    .line 176
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_0

    .line 170
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    .end local v0           #a:I
    .end local v1           #en:I
    .end local v2           #sp:Landroid/text/Spanned;
    .end local v3           #st:I
    .end local v4           #visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v5

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 18
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "off"

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object v15, v0

    move-object v0, v15

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 201
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$200()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 203
    const/4 v9, 0x0

    .local v9, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object v15, v0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-ge v9, v15, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object v15, v0

    invoke-interface {v15, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 207
    .local v6, c:C
    const/16 v15, 0x590

    if-lt v6, v15, :cond_2

    const/16 v15, 0x6ff

    if-gt v6, v15, :cond_2

    .line 208
    const/16 v15, 0x66d

    invoke-static {v15}, Landroid/text/method/PasswordTransformationMethod;->access$102(C)C

    .line 220
    .end local v6           #c:C
    .end local v9           #i:I
    :cond_0
    :goto_0
    const/4 v12, -0x1

    .local v12, st:I
    const/4 v7, -0x1

    .line 221
    .local v7, en:I
    const/4 v10, 0x0

    .line 222
    .local v10, nvisible:I
    const/4 v13, 0x0

    .local v13, starts:[I
    const/4 v8, 0x0

    .line 224
    .local v8, ends:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object v15, v0

    instance-of v15, v15, Landroid/text/Spanned;

    if-eqz v15, :cond_3

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object v11, v0

    check-cast v11, Landroid/text/Spanned;

    .line 227
    .local v11, sp:Landroid/text/Spanned;
    sget-object v15, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v11, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 228
    sget-object v15, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v11, v15}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 230
    const/4 v15, 0x0

    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v16

    const-class v17, Landroid/text/method/PasswordTransformationMethod$Visible;

    move-object v0, v11

    move v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 231
    .local v14, visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    array-length v10, v14

    .line 232
    new-array v13, v10, [I

    .line 233
    new-array v8, v10, [I

    .line 235
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_1
    if-ge v9, v10, :cond_3

    .line 236
    aget-object v15, v14, v9

    #getter for: Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;
    invoke-static {v15}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v15

    invoke-interface {v11, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    if-ltz v15, :cond_1

    .line 237
    aget-object v15, v14, v9

    invoke-interface {v11, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    aput v15, v13, v9

    .line 238
    aget-object v15, v14, v9

    invoke-interface {v11, v15}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    aput v15, v8, v9

    .line 235
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 212
    .end local v7           #en:I
    .end local v8           #ends:[I
    .end local v10           #nvisible:I
    .end local v11           #sp:Landroid/text/Spanned;
    .end local v12           #st:I
    .end local v13           #starts:[I
    .end local v14           #visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    .restart local v6       #c:C
    :cond_2
    const/16 v15, 0x2022

    invoke-static {v15}, Landroid/text/method/PasswordTransformationMethod;->access$102(C)C

    goto :goto_0

    .line 243
    .end local v6           #c:C
    .end local v9           #i:I
    .restart local v7       #en:I
    .restart local v8       #ends:[I
    .restart local v10       #nvisible:I
    .restart local v12       #st:I
    .restart local v13       #starts:[I
    :cond_3
    move/from16 v9, p1

    .restart local v9       #i:I
    :goto_2
    move v0, v9

    move/from16 v1, p2

    if-ge v0, v1, :cond_8

    .line 244
    if-lt v9, v12, :cond_4

    if-lt v9, v7, :cond_6

    .line 245
    :cond_4
    const/4 v14, 0x0

    .line 247
    .local v14, visible:Z
    const/4 v5, 0x0

    .local v5, a:I
    :goto_3
    if-ge v5, v10, :cond_5

    .line 248
    aget v15, v13, v5

    if-lt v9, v15, :cond_7

    aget v15, v8, v5

    if-ge v9, v15, :cond_7

    .line 249
    const/4 v14, 0x1

    .line 254
    :cond_5
    if-nez v14, :cond_6

    .line 255
    sub-int v15, v9, p1

    add-int v15, v15, p4

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v16

    aput-char v16, p3, v15

    .line 243
    .end local v5           #a:I
    .end local v14           #visible:Z
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 247
    .restart local v5       #a:I
    .restart local v14       #visible:Z
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 259
    .end local v5           #a:I
    .end local v14           #visible:Z
    :cond_8
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 186
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 188
    .local v0, buf:[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

    .line 189
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
