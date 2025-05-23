/*
 * Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
 * or visit www.oracle.com if you need additional information or have any
 * questions.
 *
 */
package com.sun.hotspot.igv.hierarchicallayout;

import com.sun.hotspot.igv.layout.Vertex;
import java.awt.Point;
import java.util.Set;

public interface LayoutMover {
    /**
     * Moves a link by shifting its position along the X-axis.
     *
     * @param linkPos The current position of the link.
     * @param shiftX  The amount to shift the link along the X-axis.
     */
    void moveLink(Point linkPos, int shiftX);

    /**
     * Moves a set of vertices.
     *
     * @param movedVertices A set of vertices to be moved.
     */
    void moveVertices(Set<? extends Vertex> movedVertices);

    /**
     * Moves a single vertex.
     *
     * @param movedVertex The vertex to be moved.
     */
    void moveVertex(Vertex movedVertex);

    boolean isFreeForm();
}

