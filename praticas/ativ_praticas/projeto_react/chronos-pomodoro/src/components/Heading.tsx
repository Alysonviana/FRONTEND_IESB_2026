import type React from "react";

type HeadersProps = {
  Children: React.ReactNode;
}

export function Heading({Children}: HeadersProps) {
  return( 
    <h1>
      {Children}
      </h1>
  );
}